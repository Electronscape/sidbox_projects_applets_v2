#include <stdint.h>
#include <stdio.h>
#include <string.h>

#include "main.h"
#include "apis.h"

#define APP_INVALID_WINDOW ((CGWindow)0xFF)
#define DOCUMENT_CAP       2048u

#define TXTAPP_TITLE    "Edit V1.0"

static CGWindow editor_win;
static CGWindow load_request_win = APP_INVALID_WINDOW;
static CGWindow save_request_win = APP_INVALID_WINDOW;
static CGWindow test_msg_win = APP_INVALID_WINDOW;

static CGGadget title_label;
static CGGadget status_label;
static CGGadget timer_label;
static CGGadget text_area;
static CGGadget btn_new;
static CGGadget btn_load;
static CGGadget btn_sample;
static CGGadget btn_save;
static CGGadget btn_msg;
static CGGadget btn_close;

static CGTimer tick_timer = CGTIMER_INVALID;
static volatile uint8_t app_running = 1;
static volatile uint8_t document_dirty = 0;
static uint32_t timer_ticks;

static char document_buffer[DOCUMENT_CAP];
static char status_buffer[96];
static char timer_buffer[32];
static char current_dir[FILERQ_OUTCAP] = "/";

static const char empty_document[] = "";

static const char sample_document[] =
    "Edit scratchpad\n"
    "\n"
    "This is a tiny applet text editor shell.\n"
    "The textarea is OS-owned, so typing/editing happens in the GUI gadget.\n"
    "\n"
    "'New' and 'Sample' rebuild this text area.\n"
    "Load now uses the SIDBox file requester.\n"
    "Save now writes the current textarea contents.\n";

static void on_text_changed(void *g, int32_t a, int32_t b, int32_t c, int32_t d);
static CGWindowProcRes editor_proc(CGWindow win, const CGMessage_t *m);

static void set_status(const char *text)
{
    if (status_label) {
        SBOS_DestroyGadget(status_label);
    }

    status_label = SBOS_CreateLabel(editor_win, 12, 218, 396, 16, text,
                                    GAD_TOOL_DEFAULT | GAD_TOOL_NOBORDER);
    SBOS_GadgetRepaint(status_label);
}

static void set_statusf(const char *fmt, const char *text)
{
    snprintf(status_buffer, sizeof(status_buffer), fmt, text);
    set_status(status_buffer);
}

static void set_timer_label(void)
{
    snprintf(timer_buffer, sizeof(timer_buffer), "Timer ticks: %lu",
             (unsigned long)timer_ticks);

    if (timer_label) {
        SBOS_DestroyGadget(timer_label);
    }

    timer_label = SBOS_CreateLabel(editor_win, 12, 236, 180, 16, timer_buffer,
                                   GAD_TOOL_DEFAULT | GAD_TOOL_NOBORDER);
    SBOS_GadgetRepaint(timer_label);
}

static void set_document(const char *text)
{
    if (text_area) {
        SBOS_DestroyGadget(text_area);
    }

    text_area = SBOS_CreateTextArea(editor_win, 12, 44, 396, 168, text, 0,
                                    GAD_TOOL_DEFAULT | GAD_TOOL_INSET);
    SBOS_GadgetSetCallBack(text_area, NULL, on_text_changed);
    SBOS_GadgetSetFocus(text_area);
    SBOS_GadgetRepaint(text_area);
}

static void remember_file_dir(const char *path)
{
    const char *slash = NULL;
    uint32_t len;

    if (!path || !path[0]) {
        return;
    }

    for (const char *p = path; *p; ++p) {
        if (*p == '/' || *p == '\\') {
            slash = p;
        }
    }

    if (!slash) {
        return;
    }

    len = (uint32_t)(slash - path);
    if (len == 0u) {
        strcpy(current_dir, "/");
        return;
    }

    if (len >= sizeof(current_dir)) {
        len = sizeof(current_dir) - 1u;
    }

    memcpy(current_dir, path, len);
    current_dir[len] = '\0';
}

static void load_file(const char *path)
{
    uint32_t file_len;
    uint32_t read_len;
    uint32_t bytes_read = 0;
    FRESULT res;

    if (!path || !path[0]) {
        set_status("Load cancelled");
        return;
    }

    res = sfopen(0, (char *)path, SD_OPEN_EXISTING | SD_READ);
    if (res != FR_OK) {
        snprintf(status_buffer, sizeof(status_buffer), "Load failed: FR %u",
                 (unsigned)res);
        set_status(status_buffer);
        printf(TXTAPP_TITLE ": load failed %u for %s\n", (unsigned)res, path);
        return;
    }

    file_len = SYSFileSystem->sbfilelen(0);
    read_len = file_len;
    if (read_len >= DOCUMENT_CAP) {
        read_len = DOCUMENT_CAP - 1u;
    }

    res = sfread(0, document_buffer, read_len, &bytes_read);
    sfclose(0);

    if (res != FR_OK) {
        snprintf(status_buffer, sizeof(status_buffer), "Read failed: FR %u",
                 (unsigned)res);
        set_status(status_buffer);
        printf("SIDEdit: read failed %u for %s\n", (unsigned)res, path);
        return;
    }

    document_buffer[bytes_read] = '\0';
    set_document(document_buffer);
    document_dirty = 0;
    remember_file_dir(path);
    set_statusf("Loaded: %.72s", path);
    printf("SIDEdit: loaded %lu bytes from %s\n", (unsigned long)bytes_read, path);
}

static void save_file(const char *path)
{
    uint32_t text_required;
    uint32_t bytes_to_write;
    uint32_t bytes_written = 0;
    FRESULT res;

    if (!path || !path[0]) {
        set_status("Save cancelled");
        return;
    }

    text_required = SBOS_TextAreaGetText(text_area, document_buffer, DOCUMENT_CAP);
    bytes_to_write = (uint32_t)strlen(document_buffer);

    res = sfopen(0, (char *)path, SD_CREATE_ALWAYS | SD_WRITE);
    if (res != FR_OK) {
        snprintf(status_buffer, sizeof(status_buffer), "Save failed: FR %u",
                 (unsigned)res);
        set_status(status_buffer);
        printf("SIDEdit: save open failed %u for %s\n", (unsigned)res, path);
        return;
    }

    res = sfwrite(0, document_buffer, bytes_to_write, &bytes_written);
    sfclose(0);

    if (res != FR_OK) {
        snprintf(status_buffer, sizeof(status_buffer), "Write failed: FR %u",
                 (unsigned)res);
        set_status(status_buffer);
        printf("SIDEdit: write failed %u for %s\n", (unsigned)res, path);
        return;
    }

    if (bytes_written != bytes_to_write) {
        set_status("Save incomplete");
        printf(TXTAPP_TITLE ": wrote %lu of %lu bytes to %s\n",
               (unsigned long)bytes_written, (unsigned long)bytes_to_write, path);
        return;
    }

    document_dirty = 0;
    remember_file_dir(path);

    if (text_required > DOCUMENT_CAP) {
        set_statusf("Saved truncated: %.64s", path);
    } else {
        set_statusf("Saved: %.72s", path);
    }

    printf(TXTAPP_TITLE ": saved %lu bytes to %s\n",
           (unsigned long)bytes_written, path);
}

static void app_shutdown(void)
{
    if (!app_running) {
        return;
    }

    app_running = 0;

    if (tick_timer != CGTIMER_INVALID) {
        SBOS_FreeTimer(tick_timer);
        tick_timer = CGTIMER_INVALID;
    }

    if (editor_win) {
        SBOS_CloseWindow(editor_win);
        editor_win = 0;
    }

    printf(TXTAPP_TITLE ": closing\n");
}

static void on_timer_tick(void *user)
{
    (void)user;

    if (!app_running) {
        return;
    }

    ++timer_ticks;
    set_timer_label();
}

static void on_text_changed(void *g, int32_t a, int32_t b, int32_t c, int32_t d)
{
    (void)g;
    (void)a;
    (void)b;
    (void)c;
    (void)d;

    if (!document_dirty) {
        document_dirty = 1;
        set_status("Modified");
        printf("SIDEdit: document modified\n");
    }
}

static void on_new_clicked(void *g, int32_t a, int32_t b, int32_t c, int32_t d)
{
    (void)g;
    (void)a;
    (void)b;
    (void)c;
    (void)d;

    document_dirty = 0;
    set_document(empty_document);
    set_status("New document");
    printf(TXTAPP_TITLE ": new document\n");
}

static void on_load_clicked(void *g, int32_t a, int32_t b, int32_t c, int32_t d)
{
    (void)g;
    (void)a;
    (void)b;
    (void)c;
    (void)d;

    if (load_request_win != APP_INVALID_WINDOW) {
        set_status("Load dialog already open");
        return;
    }

    load_request_win = SBOS_FileRequestFilter(editor_win, TXTAPP_TITLE ": Load Text", current_dir,
                                              "*.txt|*.log|*.cfg");
    set_status("Load dialog opened");
}

static void on_sample_clicked(void *g, int32_t a, int32_t b, int32_t c, int32_t d)
{
    (void)g;
    (void)a;
    (void)b;
    (void)c;
    (void)d;

    document_dirty = 0;
    set_document(sample_document);
    set_status("Loaded sample text");
    printf(TXTAPP_TITLE ": sample document loaded\n");
}

static void on_save_clicked(void *g, int32_t a, int32_t b, int32_t c, int32_t d)
{
    (void)g;
    (void)a;
    (void)b;
    (void)c;
    (void)d;

    if (save_request_win != APP_INVALID_WINDOW) {
        set_status("Save dialog already open");
        return;
    }

    save_request_win = SBOS_FileRequestFilter(editor_win, TXTAPP_TITLE ": Save Text As", current_dir,
                                              "*.txt|*.log|*.cfg");
    set_status("Save dialog opened");
}

static void on_msg_clicked(void *g, int32_t a, int32_t b, int32_t c, int32_t d)
{
    (void)g;
    (void)a;
    (void)b;
    (void)c;
    (void)d;

    if (test_msg_win != APP_INVALID_WINDOW) {
        set_status("Message box already open");
        return;
    }

    test_msg_win = SBOS_MessageBox(editor_win, "Message Test",
                                   "Pick a button and I will report it here.",
                                   MSGBOXF_YESNOCANCEL);
    set_status("Message box opened");
}

static void on_close_clicked(void *g, int32_t a, int32_t b, int32_t c, int32_t d)
{
    (void)g;
    (void)a;
    (void)b;
    (void)c;
    (void)d;

    app_shutdown();
}

static void handle_file_request_done(const CGMessage_t *m)
{
    int ok = (int)m->a;
    char *path = MSG_AS_PTR(char, m->c);
    CGWindow request_win = (CGWindow)m->d;

    if (request_win == load_request_win) {
        load_request_win = APP_INVALID_WINDOW;
        if (ok == 1) {
            load_file(path);
        } else {
            set_status("Load cancelled");
        }
        return;
    }

    if (request_win == save_request_win) {
        save_request_win = APP_INVALID_WINDOW;
        if (ok == 1 && path && path[0]) {
            save_file(path);
        } else {
            set_status("Save cancelled");
        }
    }
}

static void handle_message_box_done(const CGMessage_t *m)
{
    int choice = (int)m->a;
    CGWindow msg_win = (CGWindow)m->d;
    const char *choice_text = "unknown";

    if (msg_win != test_msg_win) {
        return;
    }

    test_msg_win = APP_INVALID_WINDOW;

    switch (choice) {
    case MSGBOX_OK:
        choice_text = "OK";
        break;
    case MSGBOX_YES:
        choice_text = "Yes";
        break;
    case MSGBOX_NO:
        choice_text = "No";
        break;
    case MSGBOX_CANCEL:
        choice_text = "Cancel";
        break;
    default:
        break;
    }

    set_statusf("Message choice: %s", choice_text);
    printf(TXTAPP_TITLE ": message box choice %d\n", choice);
}

static CGWindowProcRes editor_proc(CGWindow win, const CGMessage_t *m)
{
    (void)win;

    if (!m) {
        return CGPROC_DEFAULT;
    }

    switch (m->mtype){
        case CGMSG_WINDOW:
        switch (m->eventClass) {
            case CGEVT_WIN_CLOSE_REQUEST:
                app_shutdown();
                return CGPROC_HANDLED;

            case CGEVT_SYS_FILERQ_DONE:
                handle_file_request_done(m);
                return CGPROC_HANDLED;

            case CGEVT_SYS_MSGBOX_DONE:
                handle_message_box_done(m);
                return CGPROC_HANDLED;

            default:
                break;
        }
    
    default:
        break;
    
    }
    
    return CGPROC_DEFAULT;
}

#define    WIN_DEFAULT         (SBX_WF_MOVEABLE   |\
                                    SBX_WF_VISIBLE    |\
                                    SBX_WF_CLOSE      |\
                                    SBX_WF_TITLE_BAR  |\
                                    SBX_WF_ZORDER     |\
                                    SBX_WF_MINIMISE   |\
                                    SBX_WF_MAXRESTORE |\
                                    SBX_WF_SCREENBOUND)

static void build_editor(void)
{
    SBOS_CreateWindow(&editor_win, 24, 20, 432, 278, TXTAPP_TITLE, WIN_DEFAULT);
    SBOS_SetWindowProc(editor_win, editor_proc);

    btn_new = SBOS_CreateButton(editor_win, 88, 10, 42, 22, "New", GAD_TOOL_DEFAULT);
    btn_load = SBOS_CreateButton(editor_win, 134, 10, 46, 22, "Load", GAD_TOOL_DEFAULT);
    btn_sample = SBOS_CreateButton(editor_win, 184, 10, 58, 22, "Sample", GAD_TOOL_DEFAULT);
    btn_save = SBOS_CreateButton(editor_win, 246, 10, 44, 22, "Save", GAD_TOOL_DEFAULT);
    //btn_msg = SBOS_CreateButton(editor_win, 294, 10, 42, 22, "Msg", GAD_TOOL_DEFAULT);
    btn_close = SBOS_CreateButton(editor_win, 340, 10, 54, 22, "Close", GAD_TOOL_DEFAULT);

    SBOS_GadgetSetCallBack(btn_new, on_new_clicked, NULL);
    SBOS_GadgetSetCallBack(btn_load, on_load_clicked, NULL);
    SBOS_GadgetSetCallBack(btn_sample, on_sample_clicked, NULL);
    SBOS_GadgetSetCallBack(btn_save, on_save_clicked, NULL);
    SBOS_GadgetSetCallBack(btn_msg, on_msg_clicked, NULL);
    SBOS_GadgetSetCallBack(btn_close, on_close_clicked, NULL);

    set_document(sample_document);
    set_status("Ready");
    //set_timer_label();

    SBOS_GadgetRepaint(title_label);
    SBOS_WindowToFront(editor_win);
    SBOS_WindowSetFocus(editor_win);

    /* -- demo for timer looping
    tick_timer = SBOS_CreateTimer();
    if (tick_timer != CGTIMER_INVALID) {
        if (SBOS_TimerSet(tick_timer, 1000, 1000, on_timer_tick, NULL) != 0) {
            SBOS_FreeTimer(tick_timer);
            tick_timer = CGTIMER_INVALID;
            set_status("Timer setup failed");
        }
    } else {
        set_status("No free timer");
    }
    */
}

int main(int argc, char *argv[])
{
    printf(TXTAPP_TITLE " starting\n");
    build_editor();

    if (argc > 1 && argv && argv[1] && argv[1][0]) {
        printf(TXTAPP_TITLE ": argv file %s\n", argv[1]);
        load_file(argv[1]);
    }

    return 0x00;
}
