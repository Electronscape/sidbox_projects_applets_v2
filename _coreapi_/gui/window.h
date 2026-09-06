#ifndef SBAPI_WINDOW_H
#define SBAPI_WINDOW_H

#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef uint8_t CGWindow;

//// API ----------------------------------------------------------------------------------------------------
#define    SBX_WF_VISIBLE          0x00000001u   // window button frame settings
#define    SBX_WF_NOBORDER         0x00000002u
#define    SBX_WF_CLOSE            0x00000004u
#define    SBX_WF_TITLE_BAR        0x00000008u
#define    SBX_WF_TITLE_BAR_FLAT   0x00000010u
#define    SBX_WF_ZORDER           0x00000020u
#define    SBX_WF_MINIMISE         0x00000040u
#define    SBX_WF_MAXRESTORE       0x00000080u
#define    SBX_WF_SCREENBOUND      0x00000100u  // window behaviour
#define    SBX_WF_MOVEABLE         0x00000200u
#define    SBX_WF_RESIZABLE        0x00000400u
#define    SBX_WF_NOFOCUS          0x00000800u
#define    SBX_WF_NOAUTOZORDER     0x00001000u
#define    SBX_WF_ALWAYS_TO_BACK   0x00002000u
#define    SBX_WF_ALWAYS_TO_FRONT  0x00004000u
#define    SBX_WF_DOCKRIGHT        0x00008000u
#define    SBX_WF_DOCKBOTTOM       0x00010000u
#define    SBX_WF_DISABLE          0x00020000u

#define    SBX_WF_BASE_ZERO        (SBX_WF_VISIBLE | SBX_WF_ALWAYS_TO_BACK | SBX_WF_NOBORDER | SBX_WF_TITLE_BAR_FLAT) // For a blank window

#define    SBX_WIN_DEFAULT         (SBX_WF_MOVEABLE   |\
                                    SBX_WF_VISIBLE    |\
                                    SBX_WF_CLOSE      |\
                                    SBX_WF_TITLE_BAR  |\
                                    SBX_WF_ZORDER     |\
                                    SBX_WF_MINIMISE   |\
                                    SBX_WF_MAXRESTORE |\
                                    SBX_WF_RESIZABLE  |\
                                    SBX_WF_SCREENBOUND)



typedef struct {
    void (*window_create) (CGWindow *WinHandle, int16_t x, int16_t y, uint16_t width, uint16_t height, const char *title, uint32_t flags);
    void (*window_close)  (CGWindow id);
} API_GUI_Windows;


///////////-------------- HELPERS -----------------//////
/////////////////// API SYSTEM LEVEL ################
#define GUICoderGirl      (API->gui)
/////////////////////////////////////////////////////////

#define SBOS_CreateWindow(...) (GUICoderGirl->windows->window_create(__VA_ARGS__))
#define SBOS_CloseWindow(id)   (GUICoderGirl->windows->window_close(id))


#ifdef __cplusplus
}
#endif
#endif
