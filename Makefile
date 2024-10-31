
.PHONY: build
build_vial:
	qmk compile -kb lily58 -km vial


.PHONY: flash
flash_vial:
	qmk flash -kb lily58 -km vial


.PHONY: build
build_left:
	sed -i -e 's/IS_RIGHT/IS_LEFT/g' ./druotoni/config.h
	qmk compile -kb lily58 -km druotoni


.PHONY: flash
flash_left: build_left
	qmk flash -kb lily58 -km druotoni


.PHONY: build
build_right:
	sed -i -e 's/IS_LEFT/IS_RIGHT/g' ./druotoni/config.h
	qmk compile -kb lily58 -km druotoni


.PHONY: flash
flash_right: build_right
	qmk flash -kb lily58 -km druotoni

