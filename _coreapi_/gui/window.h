#ifndef SBAPI_WINDOW_H
#define SBAPI_WINDOW_H

#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef uint8_t CGWindow;


typedef struct {
    void (*window_create) (void);
    void (*window_close)  (CGWindow id);
} API_GUI_Windows;





#ifdef __cplusplus
}
#endif
#endif
