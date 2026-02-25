#ifndef SBAPI_GRAPHICS_H
#define SBAPI_GRAPHICS_H

#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

#define GFXAPI_VERSION  100

// [setdisplaymode] //
#define DISPFLAG_DISPLAYAUTO		0x01	// auto refresh - dont need to call to render (its experimental)
#define DISPFLAG_SINGLELAYER        0x00    // enable single layermode
#define DISPFLAG_DUALLAYER			0x02	// enable dual layer mode, otherwise single layer
#define DISPFLAG_NOSCROLLABLE       0x00    // disable screen scrolling
#define DISPFLAG_SCROLLABLE			0x04	// enable the screen to scroll too



__attribute__((aligned(32)))
typedef struct {
	uint8_t		*bitmap;		// base pointer to video memory area
	uint16_t	width;			// bitmap width
	uint16_t	height;			// bitmap height

	uint16_t	stride;			// pixels per column/ "scan line")
	uint16_t	_pad0;			// padding
	uint32_t	memspacelen;	// the total ramspace length
} gfx_bitmap_t;


typedef struct {
    void    (*displaynow)       (void);     // update screen (call to put what ever buffer is selected to the LCD)
    void    (*vidmem)           (uint32_t addr, uint8_t dat);   // set current buffer via memory location and data
    void    (*vwait)            (void);     // vwait
    void    (*setlcd)           (uint16_t dat, uint8_t fps);
    void    (*setdisplaymode)   (int fgwidth, int fgheight, int bgwidth, int bgheight, int flags);  // basic no background, front only, no scrolling DISPFLAG_SINGLELAYER | DISPFLAG_NOSCROLLABLE

    // draw buffer ranges!
    void         (*usebuffer)     (gfx_bitmap_t *buffer);  // set the current draw buffer
    void         (*showbuffer)    (gfx_bitmap_t *buffer);  // set the current show buffer
    gfx_bitmap_t *(*getdrawbuffer) (void);     // these SHOULD be default addresses, but can be changed.
    gfx_bitmap_t *(*getshowbuffer) (void);     // these SHOULD be default addresses, but can be changed.
} API_GFX_HARDWARE;

typedef struct  {
    void (*cls)         (void);
    void (*rectf)       (int16_t x, int16_t y, int16_t w, int16_t h);
    void (*plot)        (int16_t x, int16_t y);
    void (*setcolour)   (uint8_t colour);
} API_GFX_PRIMATIVES;

typedef struct  {
    const API_GFX_HARDWARE   *gfx_hardware;
    const API_GFX_PRIMATIVES *gfx_primative;   
} API_GFX;




#ifdef __cplusplus
}
#endif
#endif