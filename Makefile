
.PHONY: build_left
build_left:
	sed -i -e 's/IS_RIGHT/IS_LEFT/g' ./druotoni/config.h
	qmk compile -kb lily58 -km druotoni

.PHONY: build_right
build_right:
	sed -i -e 's/IS_LEFT/IS_RIGHT/g' ./druotoni/config.h
	qmk compile -kb lily58 -km druotoni

.PHONY:
build: build_right build_left


.PHONY: flash_left
flash_left: build_left
	echo 'Присоединить ЛЕВУЮ половинку и нажать RESET'
	qmk flash -kb lily58 -km druotoni

.PHONY: flash_right
flash_right: build_right
	echo 'Присоединить ПРАВУЮ половинку и нажать RESET'
	qmk flash -kb lily58 -km druotoni

.PHONY:
flash: flash_right flash_left


.PHONY: json2c
json2c:
	qmk json2c ./lily58_rev1.json > druotoni/keymap.c
