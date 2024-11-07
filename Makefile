
.PHONY: build_vial
build_vial:
	qmk compile -kb lily58 -km vial


.PHONY: flash_vial
flash_vial:
	qmk flash -kb lily58 -km vial


.PHONY: build_left
build_left:
	sed -i -e 's/IS_RIGHT/IS_LEFT/g' ./druotoni/config.h
	qmk compile -kb lily58 -km druotoni


.PHONY: flash_left
flash_left: build_left
	qmk flash -kb lily58 -km druotoni


.PHONY: build_right
build_right:
	sed -i -e 's/IS_LEFT/IS_RIGHT/g' ./druotoni/config.h
	qmk compile -kb lily58 -km druotoni


.PHONY: flash_right
flash_right: build_right
	qmk flash -kb lily58 -km druotoni

