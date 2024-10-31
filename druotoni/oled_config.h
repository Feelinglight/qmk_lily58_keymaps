#pragma once

// logo glitch
#define WITH_GLITCH
// boot sequence
#define WITH_BOOT

// custom transport for displaying on both side
#define SPLIT_TRANSACTION_IDS_USER USER_SYNC_A

// custom font
#ifdef OLED_FONT_H
#    undef OLED_FONT_H
#endif
#define OLED_FONT_H "navi_font.c"
#undef OLED_FONT_END
#define OLED_FONT_END 125
