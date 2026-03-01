#include <stdint.h>

//############################################################################################################//
//#                                                                                                          #//
//#   SIDBOX SYSTEMS API — v0.525                                                                            #//
//#   Written by Wayne H. (2025)                                                                             #//
//#                                                                                                          #//
//############################################################################################################//
//                                                                                                            //
//  Applets are intended to be small and self-contained.                                                      //
//                                                                                                            //
//  While the system provides ample external RAM for larger programs,                                         //
//  developers should be mindful of stack usage:                                                              //
//                                                                                                            //
//  • Local variables inside functions consume stack space.                                                   //
//  • The stack is intentionally small (~1 KB) and optimized for speed.                                       //
//  • Large buffers or persistent data should be allocated globally,                                          //
//    where they will reside in external RAM.                                                                 //
//                                                                                                            //
//  The stack is kept within the L2 cache on SIDBOX for maximum performance.                                  //
//  Use it wisely.                                                                                            //
//                                                                                                            //
//############################################################################################################//

	
#ifndef SIDBOX_OS_API_H_
#define SIDBOX_OS_API_H_

#define FILESYSAPI

#define __weak __attribute__((weak)) 

/* These types MUST be 16-bit or 32-bit */
typedef int				INT;
typedef unsigned int	UINT;

/* This type MUST be 8-bit */
typedef unsigned char	BYTE;

/* These types MUST be 16-bit */
typedef short			SHORT;
typedef unsigned short	WORD;
typedef unsigned short	WCHAR;

/* These types MUST be 32-bit */
typedef long			LONG;
typedef unsigned long	DWORD;

/* This type MUST be 64-bit (Remove this for ANSI C (C89) compatibility) */
typedef unsigned long long QWORD;
typedef DWORD FSIZE_t;
typedef char TCHAR;

#define MAX_DEPTH 256

extern long _Randseed;
int16_t randomi(unsigned short range);		// random from -range to +range
uint16_t urandomi(unsigned short range);	// random from 0 to range
void urandomseed(long seed);

#ifndef MAX
#define MAX(a,b) (((a) > (b)) ? (a) : (b))
#endif

// Align to 4 byte memory location
#define ALIGN4(x) (((x) + 3) & ~3)

// SIDBOX EXTERNAL RAM STARTS AT 0xD0000000
#define RAMLOCATION		0xD0000000
// Exported applet entry point function (must match ENTRY in ld script)
extern _largest_modfile;


// ## MEMORY ALIGNMENT FOR DMA AND PERFORMANCE ##
// These alignment attributes help ensure that memory structures are placed at
// boundaries compatible with DMA hardware and faster memory access.
// Use them for large graphics buffers, tightly timed variables, and
// anywhere unaligned memory access may cause issues or slowdowns.
#define MEMALIGN4    __attribute__((aligned(4)))    // Align to 4-byte  boundary (basic word alignment)
#define MEMALIGN8    __attribute__((aligned(8)))    // Align to 8-byte  boundary (often used for 64-bit types)
#define MEMALIGN16   __attribute__((aligned(16)))   // Align to 16-byte boundary (good for SIMD and cache lines)
#define MEMALIGN32   __attribute__((aligned(32)))   // Align to 32-byte boundary (ideal for DMA transfers and large buffers)


// STM32H743 REGISTER ADDRESSES  (DO NOT EDIT THESE VALUES)
#define SCB_CCR              (*(volatile uint32_t *)0xE000ED14)
#define SCB_CCR_DIV_0_TRP    (1 << 4)

// USE THESE
#define DIVZEROON			SCB_CCR |=  SCB_CCR_DIV_0_TRP;
#define DIVZEROOFF			SCB_CCR &= ~SCB_CCR_DIV_0_TRP;


// --------- ADD THIS IF YOU WANT IT ------------------
// all this does is press and hold a button to exit a program, not strictly required, but handy for a quick QUIT :)
#define EXITME	\
	uint8_t exiter = ExitCode();\
	if(exiter) return(exiter);
#endif



//// [ SODBOX STDLIB ] ////////////////////////////////////////////////////////
// EXTREME BASICS                                                           ///
////////////////////////////////////////////////////////////////////////////////////////////////
#include "graphics/graphics.h"
#include "gui/console.h"
#include "gui/window.h"

// USING THIS YOU open up an area of 1MB of CACHED and BUFFERED memory (SPEED)
// and must follow an offset profile, ANY Music is loaded at 0xD0000000 (SDRAM) so if your program starts at 128k off set, use profile 1
// eg. program uses 256k of mod music, your program would start at offset 256k, use profile 2...
#define GAMEMODE_BANKSIZE		(128 * 1024)
#define GAMEMODE_PROFILE_0		(0 * GAMEMODE_BANKSIZE)
#define GAMEMODE_PROFILE_1		(1 * GAMEMODE_BANKSIZE)
#define GAMEMODE_PROFILE_2		(2 * GAMEMODE_BANKSIZE)
#define GAMEMODE_PROFILE_3		(3 * GAMEMODE_BANKSIZE)
#define GAMEMODE_PROFILE_4		(4 * GAMEMODE_BANKSIZE)
#define GAMEMODE_PROFILE_5		(5 * GAMEMODE_BANKSIZE)
#define GAMEMODE_PROFILE_6		(6 * GAMEMODE_BANKSIZE)
#define GAMEMODE_PROFILE_7		(7 * GAMEMODE_BANKSIZE)

//// # HARDWARE LEVEL # ///////#
typedef struct {
    void (*gamemode)        (uint32_t offset);  // fill rect
    void (*exitgamemode)    (void);
	void (*dbug)			(char *string);
} API_HW ;



//// # GUI INTERFACING # //////#
typedef struct  {
    const API_GUI_Console *console;
	const API_GUI_Windows *windows;
	void (*osupdate) (void);
} API_GUI;

#include "audio/audio.h"

typedef struct {
	const API_AUDIO_HARDWARE *audhl;
	const API_MUSIC *music;
	const API_SOUND *sound;
} API_AUDIO;

#include "sys/sys.h"

//// # API ROOT DIRECTORY # ///#
typedef struct __attribute__((aligned(4))) {
	const API_HW 		*hwl;		// hardware level flaps
	const API_SYSTEMS 	*system;	// operating system stuffs
    const API_GUI     	*gui;   	// always here
    const API_GFX     	*gfx;   	// graphics library system
	const API_AUDIO   	*audio;		// audio systems
	
} API_Root;

//// memory assignment /////////////////////////////////////////////////////////////////////////
extern const char __sidbox_api_location;   // const char is the classic “linker symbol” type
#define SIDBOX_API_BASE ((uintptr_t)&__sidbox_api_location)
#define API ((volatile const API_Root *)SIDBOX_API_BASE)

#include "gui/os.h"


//// API CONTROL END ///////////////////////////////////////////////////////////////////////////

///////////-------------- HELPERS -----------------//////
/////////////////// hardware level stuff ################
#define HWKERNAL	(API->hwl)

// conf
#define configure_runmode(profile)	(HWKERNAL->gamemode(profile))

#define dbug(s) 				(API->hwl->dbug(s))