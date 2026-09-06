#ifndef SBAPI_GADGETS_H
#define SBAPI_GADGETS_H

#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif


typedef uint32_t    CNV_FLAGS_T;
typedef uint32_t    GAD_TOOL_FLAGS;
typedef uint32_t    CGGadget;

typedef void (*fnCallback)(void *gadget, int32_t a, int32_t b, int32_t c, int32_t d);

// control types
typedef enum GADGET_CLASS_T {
    GAD_NULL        = 0,
    GAD_BITMAPVIEW,
    GAD_BUTTON,
    GAD_CANVAS,
    GAD_CHECKBOX,
    GAD_GRIDSELECT,
    GAD_LABEL,
    GAD_LISTBOX,
    GAD_PROGBAR,
    GAD_RADIO,
    GAD_SCROLLBAR,
    GAD_SLIDER,
    GAD_TEXTBOX,
    GAD_TEXTAREA
} GADGET_CLASS_T;


typedef struct API_GUI_GADGETS {
    void     (*init)                  (void);

    CGGadget (*bitmapview_create)     (CGWindow win, int16_t x, int16_t y, int16_t w, int16_t h, int16_t bmp_w, int16_t bmp_h, uint32_t bv_flags, GAD_TOOL_FLAGS flags);
    CGGadget (*button_create)         (CGWindow win, int16_t x, int16_t y, int16_t w, int16_t h, const char *text, GAD_TOOL_FLAGS flags);
    CGGadget (*canvas_create)         (CGWindow win, int16_t x, int16_t y, int16_t w, int16_t h, CNV_FLAGS_T drawtype, GAD_TOOL_FLAGS flags);
    CGGadget (*checkbox_create)       (CGWindow win, int16_t x, int16_t y, int16_t w, int16_t h, const char *text, uint8_t initial_checked, GAD_TOOL_FLAGS flags);
    CGGadget (*gridselect_create)     (CGWindow win, int16_t x, int16_t y, int16_t cell_size_x, int16_t cell_size_y, uint8_t cells_x, uint8_t cells_y, uint32_t gridflags, GAD_TOOL_FLAGS flags);
    CGGadget (*label_create)          (CGWindow win, int16_t x, int16_t y, int16_t w, int16_t h, const char *text, GAD_TOOL_FLAGS flags);
    CGGadget (*listbox_create)        (CGWindow win, int16_t x, int16_t y, int16_t w, int16_t h, GAD_TOOL_FLAGS flags);
    CGGadget (*progbar_create)        (CGWindow win, int16_t x, int16_t y, int16_t w, int16_t h, GAD_TOOL_FLAGS flags);
    CGGadget (*radiobutton_create)    (CGWindow win, int16_t x, int16_t y, int16_t w, int16_t h, const char *text, uint8_t group, uint8_t checked, GAD_TOOL_FLAGS flags);
    CGGadget (*scrollbar_create)      (CGWindow win, int16_t x, int16_t y, int16_t w, int16_t h, uint8_t orient, int16_t min, int16_t max, int16_t step_small, int16_t step_large, GAD_TOOL_FLAGS flags);
    CGGadget (*slider_create)         (CGWindow win, int16_t x, int16_t y, int16_t w, int16_t h, uint8_t orient, int16_t min, int16_t max, GAD_TOOL_FLAGS flags);
    CGGadget (*textbox_create)        (CGWindow win, int16_t x, int16_t y, int16_t w, int16_t h, const char *text, uint8_t tbFlags, GAD_TOOL_FLAGS flags);
    CGGadget (*textarea_create)       (CGWindow win, int16_t x, int16_t y, int16_t w, int16_t h, const char *text, uint8_t taFlags, GAD_TOOL_FLAGS flags);

    CGGadget (*get_id)                (void *src);
    void     (*move)                  (CGGadget hnd, int16_t newx, int16_t newy);
    void     (*resize)                (CGGadget hnd, int16_t neww, int16_t newh);
    void     (*set_bpen)              (CGGadget hnd, uint8_t bpen);
    void     (*set_fpen)              (CGGadget hnd, uint8_t fpen);
    void     (*set_hpen)              (CGGadget hnd, uint8_t hpen);
    void     (*enabled)               (CGGadget h, uint8_t enable);
    void     (*destroy)               (CGGadget h);
    void     (*repaint)               (CGGadget gadgetId);
    void     (*set_focus)             (CGGadget gadget);
    uint32_t (*set_callback)          (CGGadget h, fnCallback fnOnActive, fnCallback fnOnChange);
    void     (*set_group_visible)     (CGWindow hwin, uint8_t groupid, uint8_t visible);
    void     (*set_group_id)          (CGGadget gad, uint8_t newgroupid);
    uint8_t  (*get_group_id)          (CGGadget gad);
} API_GUI_Gadgets;

//extern const API_GUI_GADGETS API_gui_gadgets;

//// Gadget Control flags
#define GAD_TOOL_DEFAULT        (1 << 0)    // nothing special
#define GAD_TOOL_DOCKED_RIGHT   (1 << 1)    // right dock used
#define GAD_TOOL_DOCKED_BOTTOM  (1 << 2)    // bottom dock used
#define GAD_TOOL_CYCLEBUTTON    (1 << 3)    // button cycle flag
#define GAD_TOOL_SCROLLARROWS   (1 << 4)    // enable the arrows on the scrollbars
#define GAD_TOOL_NOBORDER       (1 << 5)    // no border around gadgets
#define GAD_TOOL_INSET          (1 << 6)    // invert the bevel on gadgets
#define GAD_TOOL_MOUSEMOVE      (1 << 7)    // allows to receive mouse move over the gadget
#define GAD_TOOL_ICON           (1 << 8)    // enable images in gadgets
#define GAD_TOOL_ALIGN_BELOW    (1 << 9)    // align the text below the gadget
#define GAD_TOOL_ALIGN_LEFT     (1 << 10)   // align the text below the gadget
#define GAD_TOOL_ALIGN_RIGHT    (1 << 11)   // align the text below the gadget
#define GAD_TOOL_ALIGN_TOP      (1 << 12)   // align the text below the gadget
#define GAD_TOOL_OPAQUE_TEXT    (1 << 13)   // make the text background opaque
#define GAD_TOOL_TOGGLE         (1 << 14)   // allows for toggling


//CGGadget SBOS_CreateButton     (CGWindow win, int16_t x, int16_t y, int16_t w, int16_t h, const char *text, GAD_TOOL_FLAGS flags);



/*

typedef struct {
    CGGadget (*gad_button_create)    (CGWindow win, int16_t x, int16_t y, int16_t w, int16_t h, const char *text, GAD_TOOL_FLAGS flags);

} API_GUI_Gadgets;
*/

///////////-------------- HELPERS -----------------//////
/////////////////// API SYSTEM LEVEL ################
#define GUICoderGirl      (API->gui)
/////////////////////////////////////////////////////////

//#define SBOS_CreateButton(win, x, y, w, h, text, flags) (GUICoderGirl->gadgets->button_create(__VA_ARGS__))
#define SBOS_CreateButton(win, x, y, w, h, text, flags) (GUICoderGirl->gadgets->button_create(win, x, y, w, h, text, flags))

#define SBOS_GadgetSetCallBack(h, fnOnActive, fnOnChange) (GUICoderGirl->gadgets->set_callback(h, fnOnActive, fnOnChange))



#ifdef __cplusplus
}
#endif
#endif
