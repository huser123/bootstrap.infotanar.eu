# Modul 5 - Bootstrap Utility Osztályok

## Tanulási célok
- Bootstrap utility osztályok megismerése és használata
- Gyors stílusozás osztályokkal
- Spacing (térköz) rendszer megértése
- Flexbox utilities használata
- Színek és háttér utilities alkalmazása

## Főbb elemek és osztályok

### Spacing Utilities
- `m-*` - Margin
- `p-*` - Padding
- `gap-*` - Flex elemek közötti távolság
- Irányok: `t`, `b`, `s`, `e`, `x`, `y`
- Méretek: 0-5 és auto

### Színek és Háttér
- `text-*` - Szövegszínek
- `bg-*` - Háttérszínek
- Variációk: primary, secondary, success, danger, warning, info, light, dark

### Flexbox Utilities
- `d-flex` - Flex konténer
- `flex-*` - Flex irányok és viselkedés
- `justify-content-*` - Vízszintes igazítás
- `align-items-*` - Függőleges igazítás

### Border és Shadow
- `border` - Szegély
- `border-*` - Szegély irányok
- `rounded-*` - Lekerekítés
- `shadow-*` - Árnyékok

### Position és Display
- `position-*` - Pozicionálás
- `top-*`, `start-*`, stb. - Pozíció koordináták
- `d-*` - Display tulajdonságok

## Gyakorlati feladatok
1. Készíts különböző térköz kombinációkat
2. Hozz létre flex alapú elrendezéseket
3. Alkalmazz színeket és háttérszíneket
4. Kísérletezz a pozicionálással

## Bővítési lehetőségek
- Egyedi utility osztályok létrehozása
- Komplex elrendezések utility osztályokkal
- Animációk és átmenetek
- Reszponzív design utility osztályokkal

## Tippek
1. A utility osztályok kombinálhatók
2. Használd a dokumentációt referenciaként
3. Figyelj a specificitásra
4. Kerüld a felesleges ismétlődést

## Példák

### Spacing példa
```html
<div class="m-3 p-4">
    <div class="mb-2">Margin bottom 2</div>
    <div class="ps-3">Padding start 3</div>
</div>
```

### Flex példa
```html
<div class="d-flex justify-content-between align-items-center">
    <div>Bal elem</div>
    <div>Középső elem</div>
    <div>Jobb elem</div>
</div>
```

### Színek példa
```html
<div class="bg-primary text-white p-3">
    Fehér szöveg kék háttéren
</div>
```

### Position példa
```html
<div class="position-relative">
    <div class="position-absolute top-0 start-0">
        Bal felső sarok
    </div>
</div>
```

## Gyakori hibák elkerülése
- Ne használj túl sok utility osztályt egy elemen
- Figyelj a mobil nézetekre
- Használd a megfelelő prefix-eket
- Ne keverd a utility és komponens osztályokat

## Gyakorló feladatok
1. Készíts kártyát csak utility osztályokkal
2. Hozz létre reszponzív grid rendszert
3. Készíts navigációs sávot
4. Formázz űrlap elemeket utility osztályokkal