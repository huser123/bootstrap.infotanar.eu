# Modul 6 - Layout Komponensek

## Tanulási célok
- Bootstrap grid rendszer teljes megértése
- Konténer típusok és használatuk
- Reszponzív layout készítése
- Flexbox alapú igazítások
- Beágyazott grid rendszerek

## Főbb elemek és osztályok

### Konténerek
- `.container` - Fix szélességű konténer
- `.container-fluid` - Teljes szélességű konténer
- `.container-{sm|md|lg|xl|xxl}` - Breakpoint-specifikus konténerek

### Grid rendszer
- `.row` - Sor létrehozása
- `.col-*` - Oszlopok (1-12)
- `.col-{sm|md|lg|xl|xxl}-*` - Reszponzív oszlopok
- `.col-auto` - Automatikus szélesség

### Grid viselkedés
- `.order-*` - Oszlop sorrendje
- `.offset-*` - Oszlop eltolás
- `.justify-content-*` - Vízszintes igazítás
- `.align-items-*` - Függőleges igazítás

## Gyakorlati feladatok
1. Készíts különböző konténer típusokat
   - Fix szélességű
   - Teljes szélességű
   - Breakpoint-alapú

2. Hozz létre grid elrendezéseket
   - Egyenlő oszlopok
   - Különböző méretű oszlopok
   - Reszponzív oszlopok

3. Kísérletezz a grid viselkedéssel
   - Oszlopok rendezése
   - Offset használata
   - Beágyazott grid-ek

## Bővítési lehetőségek
- Komplex layout rendszerek
- Egyedi breakpoint-ok
- Nested grid rendszerek
- Speciális elrendezések
- Grid alapú komponensek

## Megjegyzések
- A grid rendszer mindig 12 oszlopos
- Használj megfelelő breakpoint-okat
- Figyelj a konténerek egymásba ágyazására
- A sorok negatív margin-t használnak

## Tippek
1. Tervezd meg előre a layout-ot
2. Használj logikus oszlopméreteket
3. Figyelj a mobilos megjelenésre
4. Használd az auto-layout lehetőségeket
5. Ne feledd a gap osztályokat

## Példakódok

### Alap grid rendszer
```html
<div class="container">
    <div class="row">
        <div class="col-4">Oszlop 1</div>
        <div class="col-4">Oszlop 2</div>
        <div class="col-4">Oszlop 3</div>
    </div>
</div>
```

### Reszponzív grid
```html
<div class="row">
    <div class="col-12 col-md-6 col-lg-3">
        Reszponzív oszlop
    </div>
</div>
```

### Oszlop rendezés
```html
<div class="row">
    <div class="col order-2">Második</div>
    <div class="col order-1">Első</div>
</div>
```

### Beágyazott grid
```html
<div class="row">
    <div class="col-9">
        <div class="row">
            <div class="col-6">Beágyazott oszlop</div>
            <div class="col-6">Beágyazott oszlop</div>
        </div>
    </div>
</div>
```

## Gyakori hibák elkerülése
- Row csak közvetlenül konténerben vagy oszlopban
- Oszlop csak row-ban
- Ne használj padding-ot row-on
- Figyelj a col-* osztályok sorrendjére
- Ne keverd a különböző konténer típusokat

## Gyakorló feladatok
1. Készíts híroldalszerű elrendezést
2. Hozz létre termék grid-et
3. Készíts dashboard layout-ot
4. Építs fotógalériát grid rendszerrel