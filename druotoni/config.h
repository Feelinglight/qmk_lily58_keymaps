#pragma once

#include "oled_config.h"

#define MASTER_LEFT
#define OLED_DRIVER_ENABLE

// tapping toggle for my layers
#define TAPPING_TOGGLE 2

#define TAPPING_TERM 200
#define PERMISSIVE_HOLD
#define HOLD_ON_OTHER_KEY_PRESS_PER_KEY
#define RETRO_TAPPING

#define IS_LEFT 1

// more space
// #define NO_ACTION_MACRO
// #define NO_ACTION_FUNCTION

// #define NO_ACTION_TAPPING
// #define NO_ACTION_ONESHOT

// ???
#undef LOCKING_SUPPORT_ENABLE
#undef LOCKING_RESYNC_ENABLE

// small layer state
#define LAYER_STATE_8BIT

// no debug or trace
#ifndef NO_DEBUG
#    define NO_DEBUG
#endif
#if !defined(NO_PRINT) && !defined(CONSOLE_ENABLE)
#    define NO_PRINT
#endif


