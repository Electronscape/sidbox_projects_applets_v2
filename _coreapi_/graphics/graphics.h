#ifndef SBAPI_GRAPHICS_H
#define SBAPI_GRAPHICS_H

#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

#define GFXAPI_VERSION  100

// [setlcd frame rate] //
// these are base tested, but you can use any 8bit value with various results. some good, some funny
#define DEFAULT_RENDER_ORDER        220
#define FPS_25      0x00
#define FPS_27      0x10
#define FPS_29      0x20
#define FPS_30      0x30
#define FPS_32      0x40
#define FPS_35      0x50
#define FPS_38      0x60
#define FPS_40      0x70
#define FPS_45      0x80
#define FPS_50      0x90
#define FPS_55      0xA0
#define FPS_60      0xB0
#define FPS_70      0xC0    // SAFE FASTED
#define FPS_82      0xD0    // screen cant keep up
#define FPS_99      0xE0    // REALLY BAD! 
    

// [setdisplaymode] //
#define DISPFLAG_DISPLAYAUTO		0x01	// auto refresh - dont need to call to render (its experimental)
#define DISPFLAG_SINGLELAYER        0x00    // enable single layermode
#define DISPFLAG_DUALLAYER			0x02	// enable dual layer mode, otherwise single layer
#define DISPFLAG_NOSCROLLABLE       0x00    // disable screen scrolling
#define DISPFLAG_SCROLLABLE			0x04	// enable the screen to scroll too


#pragma pack(push, 1)
typedef struct {
    uint8_t  config;        // [0]

    uint16_t width_be;      // [1..2]  big-endian
    uint16_t height_be;     // [3..4]  big-endian
    uint32_t length_be;     // [5..8]  big-endian payload length

    uint8_t  reserved[7];   // [9..15] must be 0

    uint8_t  palette[1024]; // [16..1039] fixed 1024-byte palette
} ppb_t;
#pragma pack(pop)


typedef struct __attribute__((aligned(32))) {
	uint8_t		*bitmap;		// base pointer to video memory area
	uint16_t	width;			// bitmap width
	uint16_t	height;			// bitmap height

	uint16_t	stride;			// pixels per column/ "scan line") (so usually the height)
	uint16_t	_pad0;			// padding
	uint32_t	memspacelen;	// the total ramspace length
} gfx_bitmap_t;


#define BLIT_FLAG_TYPE_TINT_VALUE   0
#define BLIT_FLAG_TYPE_FADE_VALUE   1

#define BLIT_FLAG_SOLIDCOLOUR   0x0001
#define BLIT_FLAG_ALPHABLEND    0x0002
#define BLIT_FLAG_FLIP_X        0x0004
#define BLIT_FLAG_FLIP_Y        0x0008

typedef struct __attribute__((aligned(32))) {
    const uint8_t *imgdat;
    uint8_t     flags;          // flag
    uint8_t     flagval[7];     // flag values

    uint16_t    atlas_stride;   // usually the width of the whole sprite atlas
    uint16_t    atlas_height;   // height

    uint16_t    width;          // sprite width
    uint16_t    height;         // sprite height

    int16_t     drawx;          // inteded draw location x
    int16_t     drawy;          // inteded draw location y

    uint8_t     index;          // cell index
    uint8_t     _pad0;
    uint8_t     _pad1[4];       // trail padding :)
} gfxbob_t;    // Blitter Objects


typedef struct __attribute__((aligned(32))) {
    void         (*displaynow)       (void);     // update screen (call to put what ever buffer is selected to the LCD)
    void         (*vidmem)           (uint32_t addr, uint8_t dat);   // set current buffer via memory location and data
    void         (*ledbrightness)    (uint8_t level);    // set relative brightness from 0 to 100% of the user brightness setting
    void         (*lcdwait)          (void);     // waits here until the last displaynow is fully completed
    void         (*setlcd)           (uint16_t dat, uint8_t fps);    //[setlcd frame rate]//
    void         (*setdisplaymode)   (int fgwidth, int fgheight, int bgwidth, int bgheight, int flags);  // basic no background, front only, no scrolling DISPFLAG_SINGLELAYER | DISPFLAG_NOSCROLLABLE

    // draw buffer ranges! -- some buffer controls, MANY but mostly will use dispfbuffer, dispbbuffer
    void         (*usebuffer)        (gfx_bitmap_t *buffer);  // set the current draw buffer
    void         (*showfbuffer)      (gfx_bitmap_t *buffer);  // set the current front layer show buffer
    void         (*showbbuffer)      (gfx_bitmap_t *buffer);  // set the current back  layer show buffer
    void         (*dispfbuffers)     (gfx_bitmap_t *sbuffer, gfx_bitmap_t *dbuffer);
    void         (*dispbbuffers)     (gfx_bitmap_t *sbuffer, gfx_bitmap_t *dbuffer);

    void         (*scrollf)          (int x, int y);
    void         (*scrollb)          (int x, int y);
    
    gfx_bitmap_t *(*getdrawbuffer)   (void);     // these SHOULD be default addresses, but can be changed.
    gfx_bitmap_t *(*getshowbuffer)   (void);     // these SHOULD be default addresses, but can be changed.

    gfx_bitmap_t *(*getfrontbuffer1) (void);
    gfx_bitmap_t *(*getfrontbuffer2) (void);
    gfx_bitmap_t *(*getbackbuffer1)  (void);
    gfx_bitmap_t *(*getbackbuffer2)  (void);
    

    void    (*usepalettef)        (uint32_t *pal);  // new front palette
    void    (*usepaletteb)        (uint32_t *pal);  // new front palette
} API_GFX_HARDWARE;

typedef struct  {
    void (*cls)           (void);
    void (*rectf)         (int16_t x, int16_t y, int16_t w, int16_t h);
    void (*plot)          (int16_t x, int16_t y);
    void (*setcolour)     (uint8_t colour);

    uint8_t *(*getsprite) (uint8_t *sheet, int sheet_w, int cell_w, int cell_h, int frame);
    void (*blitcell)      (uint8_t *src,  int16_t tx, int16_t ty,  uint16_t src_w, uint16_t src_h,  uint16_t cell_w, uint16_t cell_h,  uint8_t index);
    void (*blit)          (uint8_t *src, int16_t x, int16_t y, uint16_t w, uint16_t h);
    void (*blitw)         (uint8_t *src, int16_t dx, int16_t dy, uint16_t w, uint16_t h, uint16_t src_stride);
    uint8_t (*tcollide)   (const uint8_t *A, int Aw, int Ah, int AStride, int Ax, int Ay, const uint8_t *B, int Bw, int Bh, int BStride, int Bx, int By);

    void (*drawbob)       (gfxbob_t *bob);    // process Blit object ;)
    uint8_t (*bcollide)   (gfxbob_t *a, gfxbob_t *b);
} API_GFX_PRIMATIVES;

typedef struct  {
    const API_GFX_HARDWARE   *gfx_hardware;
    const API_GFX_PRIMATIVES *gfx_primative;   
} API_GFX;



///////////-------------- HELPERS -----------------//////
/////////////////// hardware level stuff ################
#define GFXBase (API->gfx)
#define GFXHW   (GFXBase->gfx_hardware) 
#define GFXP    (GFXBase->gfx_primative)   
/////////////////////////////////////////////////////////

#define lcd_bright(uint8_t)     (GFXHW->ledbrightness(uint8_t))

// get the current draw buffer
#define gfx_getshowbuffer()     (GFXHW->getshowbuffer())
#define gfx_getdrawbuffer()     (GFXHW->getdrawbuffer())

// get the current show buffer - this buffer is sent to the LCD output

#define gfx_getfbuffer1()       (GFXHW->getfrontbuffer1())
#define gfx_getfbuffer2()       (GFXHW->getfrontbuffer2())
#define gfx_getbbuffer1()       (GFXHW->getbackbuffer1())
#define gfx_getbbuffer2()       (GFXHW->getbackbuffer2())

// SET the show buffer - prepare the buffer for LCD output
#define gfx_showfbuffer(p_buffer)  (GFXHW->showfbuffer(p_buffer))
#define gfx_showbbuffer(p_buffer)  (GFXHW->showbbuffer(p_buffer))

// SET scroll info
#define gfx_scrollf(x, y)          (GFXHW->scrollf(x,y))
#define gfx_scrollb(x, y)          (GFXHW->scrollb(x,y))

// SET the draw buffer - use this buffer for ANY drawing! (including sprites)
#define gfx_usebuffer(p_buffer)   (GFXHW->usebuffer(p_buffer))

#define gfx_dispfbuffer(p_sbuffer, p_dbuffer) (GFXHW->dispfbuffers(p_sbuffer, p_dbuffer))
#define gfx_dispbbuffer(p_sbuffer, p_dbuffer) (GFXHW->dispbbuffers(p_sbuffer, p_dbuffer))

// SET the LCD output mode, rotations, flips, output frame rate (25hz, 50hz, 60hz)
#define gfx_setlcd(mode, rate)  (GFXHW->setlcd(mode, rate))

/* 
    SET the graphics output mode, [setdisplaymode], LCD can only display physically 480 x 320, but a buffer can be much larger
    if using a much larger buffer dimentions, recommend to use scrollable
*/
#define gfx_mode(fgwidth, fgheight, bgwidth, bgheight, flags) (GFXHW->setdisplaymode(fgwidth, fgheight, bgwidth, bgheight, flags))

// Put show buffer to LCD screen output
#define gfx_displaynow()        (GFXHW->displaynow())

// LCDWAIT, commiting using displaynow(), some time is needed for the entire push to lcd to be complete
// using this CAN be useful if more time is needed to complete, if your code base takes longer before the next displaynow,
// the lcdwait() may not be necessary. 
// side effect if not used when needed, graphics will be half rendered and potentially look corrupted. 
#define gfx_lcdwait()           (GFXHW->lcdwait())

// will clear the current drawbuffer (to zero)
#define gfx_cls()		        (GFXP->cls())

// draw a filled rectactangle on the drawbuffer
#define gfx_rectf(x, y, w, h)	(GFXP->rectf(x,y,w,h))

// set the current draw colour
#define gfx_setcolour(c)        (GFXP->setcolour((c)))

// direct blit system, messier but kept in just for directness
#define gfx_getsprite(sheet, sheet_w, cell_w, cell_h, frame) (GFXP->getsprite(sheet, sheet_w, cell_w, cell_h, frame))
#define gfx_blitcell(img, x, y, sx, sy, cx, cy, index)       (GFXP->blitcell(img, x, y, sx, sy, cx, cy, index))
#define gfx_blit(img, x, y, w, h)                            (GFXP->blit(img, x, y, w, h))
#define gfx_blitw(src, x, y, w, h, stride)                   (GFXP->blitw(src, x, y, w, h, stride))
#define gfx_tcollide(A, Aw, Ah, AS, Ax, Ay,   B, Bw, Bh, BS, Bx, By) (GFXP->tcollide(A, Aw, Ah, AS, Ax, Ay,  B, Bw, Bh, BS, Bx, By))

// BOBS blitter objects!!
#define gfx_drawbob(bob)     (GFXP->drawbob(bob))
#define gfx_bcollide(a, b)   (GFXP->bcollide(a, b))

// PALETTE use
#define gfx_usefpalette(pal) (GFXHW->usepalettef(pal))
#define gfx_usebpalette(pal) (GFXHW->usepaletteb(pal))



#ifdef __cplusplus
}
#endif
#endif

/*
//////////////////// DOCUMENTING /////////////////////////

BOBS (Blit Objects:)    // these are easier to setup and use
    setup:
    gfxbob_t image;
    // setup
    image.imgdat = point to the image atlas or a single image
    // set and forget (unless special effects ;)
    image.atlas_height = 128;   // sprite atlas height  
    image.atlas_stride = 128;   // sprite atlas width
    image.height = 32;          // the size of a sprite cell size
    image.width = 32;           // the size of the sprite cell width

    // updatables for animations, locations
    image.index = 0;            // if using atlas spritesheet, index to the cell
    image.drawx = 0;            // to be blitted at location (draw x)
    image.drawy = 0;            // to be blitted at location (draw y)
    LoadPPB("res/shiprs.ppb", image.imgdat);    // simply load a bitmap format

    drawx, drawy are live updatable so moving the bob anywhere on screen ;)


BOBS (Collision Testing:)
    gfx_bcollide(gfxbob_t a, gfxbob_t b); returns 1 when its a rectangle hit, returns 2 if the hit is pixel perfect (2 over rides 1)












*/