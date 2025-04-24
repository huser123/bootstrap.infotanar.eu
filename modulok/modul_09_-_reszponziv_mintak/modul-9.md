# Modul 9 - Reszponzív Minták

## Tanulási célok
- Reszponzív navigációs minták implementálása
- Táblázatok mobilbarát megjelenítése
- Képek és videók reszponzív kezelése
- Rugalmas tipográfia kialakítása
- Bootstrap breakpointok hatékony használata

## Főbb elemek és osztályok

### Reszponzív Navigáció
- `.navigacio-alap` - Alap navigációs struktúra
- `.nav-toggle` - Mobil menü kapcsoló
- `.nav-menu` - Navigációs menü konténer
- `.oldalmenu` - Oldalsó menü komponens
- `.mega-menu` - Mega menü megoldás

### Reszponzív Táblázatok
- `.tablazat-kontener` - Táblázat wrapper
- `.tablazat-kartyak` - Kártya alapú megjelenítés
- `.tablazat-lista` - Lista alapú megjelenítés

### Reszponzív Média
- `.kep-kontener` - Képek konténere
- `.arany-16-9`, `.arany-4-3`, `.arany-1-1` - Képarányok
- `.video-kontener` - Videó konténer
- `.galeria-container` - Képgaléria elrendezés

### Reszponzív Tipográfia
- `.reszponziv-cimsor-*` - Reszponzív címsorok
- `.szovegtorzs` - Alapszöveg beállítások
- `.reszponziv-idezet` - Idézetek formázása

## Gyakorlati feladatok

### 1. Navigációs megoldások
```html
<!-- Alap navigáció -->
<nav class="navigacio-alap">
    <div class="nav-logo">LogoTípus</div>
    <button class="nav-toggle">
        <span class="toggle-vonal"></span>
    </button>
    <div class="nav-menu">
        <ul class="nav-lista">
            <li><a href="#" class="nav-link">Menüpont</a></li>
        </ul>
    </div>
</nav>
```

### 2. Táblázatok mobilra optimalizálása
```html
<div class="tablazat-kontener">
    <table class="tablazat">
        <thead>
            <tr>
                <th>Oszlop 1</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td data-label="Oszlop 1">Adat</td>
            </tr>
        </tbody>
    </table>
</div>
```

### 3. Reszponzív média elemek
```html
<!-- Reszponzív kép -->
<div class="kep-kontener arany-16-9">
    <img src="kep.jpg" alt="Kép">
</div>

<!-- Reszponzív videó -->
<div class="video-kontener">
    <div class="video-wrapper arany-16-9">
        <iframe src="video-url"></iframe>
    </div>
</div>
```

## Bővítési lehetőségek
- Animációk hozzáadása a navigációhoz
- Haladó táblázat szűrés és rendezés
- Lightbox galéria implementálása
- Egyedi breakpointok definiálása
- Dinamikus tartalombetöltés
- Kereső funkció megvalósítása

## Megjegyzések
- Mindig mobilbarát megközelítést használjunk (mobile-first)
- A breakpointokat következetesen alkalmazzuk
- Ügyeljünk a teljesítményre és betöltési időkre
- Teszteljünk különböző eszközökön
- Figyeljünk az akadálymentességre

## Tippek
1. Használjuk a Bootstrap beépített breakpointjait
2. Alkalmazzunk megfelelő fallback megoldásokat
3. Optimalizáljuk a média elemeket
4. Figyeljünk a betöltési sorrendekre
5. Teszteljünk valós eszközökön

## Példák

### Reszponzív kép különböző képarányokkal
```css
.kep-kontener {
    position: relative;
    width: 100%;
    overflow: hidden;
}

.arany-16-9 {
    padding-top: 56.25%; /* 16:9 */
}

.arany-4-3 {
    padding-top: 75%; /* 4:3 */
}

.arany-1-1 {
    padding-top: 100%; /* 1:1 */
}

.kep-kontener img {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    object-fit: cover;
}
```

### Reszponzív táblázat mobilnézetre
```css
@media (max-width: 768px) {
    .tablazat th {
        display: none;
    }

    .tablazat td {
        display: block;
        text-align: right;
    }

    .tablazat td::before {
        content: attr(data-label);
        float: left;
        font-weight: bold;
    }
}
```

### Reszponzív tipográfia
```css
.reszponziv-cimsor {
    font-size: clamp(1.5rem, 5vw, 3rem);
    line-height: 1.2;
}

.szovegtorzs {
    font-size: clamp(1rem, 2vw, 1.25rem);
    line-height: 1.6;
}
```

## Gyakori hibák elkerülése
- Ne használjunk fix szélességeket
- Kerüljük a túl sok média query használatát
- Ne feledkezzünk meg a touch eszközökről
- Figyeljünk a tartalom sorrendjére
- Kerüljük a horizontális görgetést

## Gyakorló feladatok
1. Készíts reszponzív dashboard layoutot
2. Implementálj több szintű navigációt
3. Hozz létre reszponzív kártyarendszert
4. Készíts hibrid táblázat/lista nézetet
5. Valósíts meg reszponzív űrlapokat