#pragma once

#include QMK_KEYBOARD_H

const uint16_t PROGMEM MO3_combo[] = {KC_BSPC, KC_N, COMBO_END};
const uint16_t PROGMEM alt_shift_combo[] = {KC_BSPC, KC_M, COMBO_END};

combo_t key_combos[] = {
    COMBO(MO3_combo, MO(3)),
    COMBO(alt_shift_combo, LALT(KC_LSFT))
};

