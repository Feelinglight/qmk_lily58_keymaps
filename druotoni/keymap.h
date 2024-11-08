#pragma once

#include QMK_KEYBOARD_H

const uint16_t PROGMEM test_combo1[] = {KC_BSPC, KC_N, COMBO_END};

combo_t key_combos[] = {
    COMBO(test_combo1, MO(3)),
};

