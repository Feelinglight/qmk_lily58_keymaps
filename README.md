# Сборка vial для Lily58

## Подготовка

```bash
git clone --recurse-submodules -j8 https://github.com/vial-kb/vial-qmk
cd vial-qmk
python3 -m pip install qmk
qmk setup
cd keyboards/lily58/rev1/
rm -rf keymaps
git clone git@github.com:Feelinglight/qmk_lily58_keymaps.git keymaps
```

## Прошивка

```bash
# либо -km druotoni
qmk compile -kb lily58 -km vial
# 2 раза нажать reset на клавиатуре (рядом с дисплеем)
qmk flash -kb -lily58 -km vial
```

- Прошивать каждую половинку отдельно, без соединения половинок
- Для druotoni нужно менять макросы IS_LEFT и IS_RIGHT в config.h
