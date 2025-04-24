# Modul 11 - Haladó Grid Technikák

## Tanulási célok
- CSS Grid és Bootstrap Grid együttes használata
- Komplex layout rendszerek építése
- Masonry elrendezés CSS Grid segítségével
- Auto-fill és auto-fit használata
- Grid területek (grid-area) kezelése

## Főbb elemek és osztályok

### Dashboard Grid
- `.dashboard-grid` - Alap dashboard elrendezés
- `.oldalsav` - Bal oldali navigáció
- `.fo-tartalom` - Központi tartalmi rész
- `.jobb-oldalsav` - Jobb oldali kiegészítő panel

### Masonry Layout
- `.masonry-grid` - Masonry elrendezés konténer
- `.masonry-elem` - Masonry elem
- `.kartya-tartalom` - Kártya belső tartalom

### Grid Területek
- `.teruletek-grid` - Grid területek konténer
- `grid-template-areas` - Területek definiálása
- `grid-area` - Területek hivatkozása

## Gyakorlati feladatok

### 1. Dashboard Layout készítése
```html
<div class="dashboard-grid">
    <aside class="oldalsav">
        <!-- Oldalsáv tartalom -->
    </aside>
    <main class="fo-tartalom">
        <!-- Fő tartalom -->
    </main>
    <aside class="jobb-oldalsav">
        <!-- Jobb oldalsáv -->
    </aside>
</div>
```

```css
.dashboard-grid {
    display: grid;
    grid-template-columns: 280px 1fr 300px;
    gap: 1.5rem;
}
```

### 2. Masonry Grid implementálása
```html
<div class="masonry-grid">
    <div class="masonry-elem">
        <div class="kartya-tartalom">
            <!-- Kártya tartalom -->
        </div>
    </div>
</div>
```

```css
.masonry-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
    gap: 1.5rem;
    align-items: start;
}
```

### 3. Grid területek használata
```css
.teruletek-grid {
    display: grid;
    grid-template-areas:
        "fejlec fejlec fejlec"
        "nav tartalom oldalsav"
        "lablec lablec lablec";
    grid-template-columns: 200px 1fr 200px;
}

.terulet-fejlec {
    grid-area: fejlec;
}
```

## Bővítési lehetőségek
- Dinamikus grid rendszerek
- CSS Grid animációk
- Egyéni grid vonalak
- Reszponzív grid területek
- Hybrid layout rendszerek
- Nested grid struktúrák

## Megjegyzések
- Használjunk értelmes névkonvenciókat a grid területeknél
- Figyeljünk a reszponzív töréspontokra
- A grid gap értékek legyenek következetesek
- Gondoljunk az újrafelhasználhatóságra
- Teszteljük különböző képernyőméreteken

## Tippek
1. Használjuk a Firefox Grid Inspectort fejlesztéshez
2. A grid-auto-flow segít a tartalom automatikus elrendezésében
3. A minmax() függvény rugalmasabb layoutot biztosít
4. Az auto-fill és auto-fit különböző esetekben hasznos
5. A grid-template-areas vizuálisan is átlátható

## Példakódok

### Auto-fill vs Auto-fit
```css
/* Auto-fill: új üres grideket hoz létre */
.autofill-grid {
    grid-template-columns: repeat(auto-fill, minmax(150px, 1fr));
}

/* Auto-fit: széthúzza a meglévő elemeket */
.autofit-grid {
    grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
}
```

### Reszponzív grid területek
```css
@media (max-width: 768px) {
    .teruletek-grid {
        grid-template-areas:
            "fejlec"
            "nav"
            "tartalom"
            "oldalsav"
            "lablec";
        grid-template-columns: 1fr;
    }
}
```

## Gyakori hibák elkerülése
- Ne használjunk felesleges wrapper elemeket
- Kerüljük a túl sok beágyazott gridet
- Figyeljünk a helyes HTML szemantikára
- Ne keverjük feleslegesen a különböző layout rendszereket
- Ügyeljünk a grid elemek sorrendjére

## Gyakorló feladatok
1. Készíts admin dashboard layoutot
2. Implementálj Pinterest-szerű masonry gridet
3. Hozz létre komplex grid területekkel rendelkező oldalt
4. Építs reszponzív kártyarendszert
5. Valósíts meg hibrid Bootstrap-Grid layoutot