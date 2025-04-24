# Modul 10 - CSS-only Interakciók

## Tanulási célok
- JavaScript használata nélküli interaktív elemek létrehozása
- Összetett CSS szelektorok és pszeudo-osztályok használata
- Átmenetek és transzformációk alkalmazása
- HTML input elemek kreatív felhasználása
- Hozzáférhető és reszponzív komponensek készítése

## Főbb elemek és osztályok

### CSS-only Dropdown
- `.css-dropdown` - Alap legördülő menü konténer
- `.dropdown-input` - Rejtett checkbox input
- `.dropdown-tartalom` - Legördülő tartalom
- `.tobbszintu-nav` - Többszintű navigáció
- `.mega-nav` - Mega menü konténer

### CSS-only Accordion
- `.css-accordion` - Harmonika menü konténer
- `.accordion-elem` - Harmonika elem
- `.accordion-input` - Rejtett radio input
- `.accordion-tartalom` - Harmonika tartalom

### CSS-only Tabs
- `.css-tabs` - Lapfül konténer
- `.tab-input` - Rejtett radio input
- `.tab-fejlec` - Lapfülek fejléc
- `.tab-tartalom` - Lapfül tartalma

### CSS-only Tooltip
- `[data-tooltip]` - Alap elemleírás
- `[data-tooltip-pozicio]` - Elemleírás pozíciója
- `.interaktiv-tooltip` - Interaktív elemleírás

### CSS-only Lightbox
- `.lightbox-galeria` - Galéria konténer
- `.lightbox` - Lightbox ablak
- `.lightbox-tartalom` - Lightbox tartalom
- `.lightbox-leiras` - Kép leírás

## Gyakorlati feladatok

### 1. Dropdown menü készítése
```html
<div class="css-dropdown">
    <input type="checkbox" id="dropdown1" class="dropdown-input">
    <label for="dropdown1" class="dropdown-gomb">Menü</label>
    <div class="dropdown-tartalom">
        <ul class="dropdown-lista">
            <li><a href="#">Menüpont</a></li>
        </ul>
    </div>
</div>
```

### 2. Harmonika menü implementálása
```html
<div class="css-accordion">
    <div class="accordion-elem">
        <input type="radio" name="accordion" id="acc1" class="accordion-input">
        <label for="acc1" class="accordion-fejlec">Cím</label>
        <div class="accordion-tartalom">
            Tartalom
        </div>
    </div>
</div>
```

### 3. Lapfülek létrehozása
```html
<div class="css-tabs">
    <input type="radio" name="tabs" id="tab1" class="tab-input" checked>
    <div class="tab-fejlec">
        <label for="tab1" class="tab-cimke">Fül 1</label>
    </div>
    <div class="tab-tartalom">
        <div class="tab-panel">Tartalom 1</div>
    </div>
</div>
```

## Bővítési lehetőségek
- Animációk hozzáadása az átmenetekhez
- Egyedi stílusok és témák
- Reszponzív viselkedés bővítése
- Több interakciós minta
- Egyedi ikonok és grafikák
- Különböző megjelenési módok

## Megjegyzések
- Mindig használjunk label elemeket az inputoknál
- Figyeljünk az akadálymentességre
- A tartalom rendezett maradjon minden nézetben
- A komponensek legyenek újrahasználhatóak
- Teszteljük a különböző képernyőméreteken

## Tippek
1. Használjunk átlátható HTML struktúrát
2. Az átmenetek legyenek finomak és természetesek
3. A z-index értékeket rendszerezzük
4. Figyeljünk a fallback megoldásokra
5. Teszteljük az összes interakciós állapotot

## Példakódok

### CSS-only Dropdown
```css
.css-dropdown {
    position: relative;
}

.dropdown-input {
    display: none;
}

.dropdown-input:checked ~ .dropdown-tartalom {
    display: block;
    opacity: 1;
    transform: translateY(0);
}
```

### CSS-only Accordion
```css
.accordion-input:checked ~ .accordion-tartalom {
    max-height: 500px;
}

.accordion-tartalom {
    max-height: 0;
    overflow: hidden;
    transition: max-height 0.3s;
}
```

### Tooltip
```css
[data-tooltip]:before,
[data-tooltip]:after {
    position: absolute;
    visibility: hidden;
    opacity: 0;
    transition: opacity 0.3s;
}

[data-tooltip]:hover:before,
[data-tooltip]:hover:after {
    visibility: visible;
    opacity: 1;
}
```

## Gyakori hibák elkerülése
- Ne használjunk túl sok egymásba ágyazott szelektort
- Kerüljük a bonyolult animációkat
- Figyeljünk a helyes HTML szemantikára
- Ne használjunk felesleges wrapper elemeket
- Ne feledkezzünk meg a reszponzivitásról

## Gyakorló feladatok
1. Készíts többszintű dropdown menüt
2. Hozz létre csoportosított accordion-t
3. Implementálj több fülsort tartalmazó tab rendszert
4. Készíts interaktív tooltip kártyát
5. Valósíts meg lightbox galériát leírásokkal