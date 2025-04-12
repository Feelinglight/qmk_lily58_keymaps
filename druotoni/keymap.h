#pragma once

#include QMK_KEYBOARD_H

const uint16_t PROGMEM MO3_combo[] = {KC_BSPC, MO(1), COMBO_END};
// const uint16_t PROGMEM alt_shift_combo[] = {KC_LSFT, MO(2), COMBO_END};

combo_t key_combos[] = {
    COMBO(MO3_combo, MO(3))
    // ,
    // COMBO(alt_shift_combo, LALT(KC_LSFT))
};

// --------------- key overrides ---------------

const key_override_t delete_key_override = ko_make_basic(MOD_MASK_SHIFT, KC_BSPC, KC_DEL);

const key_override_t *key_overrides[] = {
	&delete_key_override
};

