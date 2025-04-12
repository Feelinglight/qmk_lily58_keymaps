BOOTLOADER = caterina
COMBO_ENABLE = yes

VIA_ENABLE = no
VIAL_ENABLE = no

DYNAMIC_MACRO_ENABLE = no
GRAVE_ESC_ENABLE = no
SPACE_CADET_ENABLE = no

# https://docs.qmk.fm/config_options#feature-options
MAGIC_ENABLE = no
BOOTMAGIC_ENABLE = no
MOUSEKEY_ENABLE = no
EXTRAKEY_ENABLE = no
CONSOLE_ENABLE = no
COMMAND_ENABLE = no
NKRO_ENABLE = no
KEY_OVERRIDE_ENABLE = yes
LEADER_ENABLE = no

# Do not enable SLEEP_LED_ENABLE. it uses the same timer as BACKLIGHT_ENABLE
# Breathing sleep LED during USB suspend
SLEEP_LED_ENABLE = no
LTO_ENABLE = yes
# EXTRAFLAGS += -flto

SRC +=  ./lib/rgb_state_reader.c \
        ./burst.c \
        ./navi_logo.c \
        ./gui_state.c \
        ./fast_random.c \
        ./layer_frame.c \
        ./ring.c \
        ./boot.c \
        ./draw_helper.c \
        ./oled.c \

