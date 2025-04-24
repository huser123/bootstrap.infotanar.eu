# Modul 8 - Egyedi Komponensek

## Tanulási célok
- Modern és újrahasználható Bootstrap komponensek készítése
- Komplex felületi elemek struktúrájának kialakítása
- CSS animációk és átmenetek hatékony használata
- Reszponzív komponensek fejlesztése
- Interaktív felhasználói élmény kialakítása

## Főbb elemek és osztályok

### Kreatív kártyák
- `.kreativ-kartya` - Alap kártyastruktúra
- `.atfedes` - Átfedéses kártyavariáció
- `.haromd` - 3D elforduló kártya
- `.gradiens` - Gradiens hátterű kártya

### Timeline komponens
- `.idovonal-kontener` - Timeline fő konténer
- `.idopont-elem` - Timeline elem
- `.marker-ikon` - Időpont jelölő ikon
- `.idopont-kartya` - Timeline kártya

### Árazó táblák
- `.arak-kartya` - Árazó tábla alap
- `.kiemelt` - Kiemelt csomag jelölés
- `.csomag-lista` - Szolgáltatások lista
- `.lista-elem` - Lista elem állapotokkal

### Statisztikai kártyák
- `.stat-kartya` - Statisztikai kártya alap
- `.stat-kordiagram` - Kördiagram komponens
- `.mini-grafikon` - Oszlopdiagram komponens
- `.stat-szamok` - Számadatok megjelenítés

### Profilkártyák
- `.profil-kartya` - Profilkártya alap
- `.modern` - Modern profilkártya
- `.csapattag` - Csapattag kártya
- `.dashboard` - Dashboard stílusú kártya

## Gyakorlati feladatok

### 1. Kreatív kártyák készítése
```html
<div class="kreativ-kartya atfedes">
    <div class="kartya-media">
        <img src="kep.jpg" alt="Kép">
        <div class="kartya-tag">Kiemelt</div>
    </div>
    <div class="kartya-tartalom">
        <h3 class="kartya-cim">Cím</h3>
        <p class="kartya-szoveg">Leírás</p>
    </div>
</div>
```

### 2. Timeline elemek létrehozása
```html
<div class="idopont-elem">
    <div class="idopont-marker">
        <div class="marker-ikon">📅</div>
    </div>
    <div class="idopont-kartya">
        <div class="kartya-fejlec">
            <span class="datum">2024 Jan</span>
        </div>
        <h3>Esemény címe</h3>
        <p>Esemény leírása</p>
    </div>
</div>
```

### 3. Árazó táblák implementálása
```html
<div class="arak-kartya kiemelt">
    <div class="kartya-kiemel">Legnépszerűbb</div>
    <div class="kartya-fejlec">
        <div class="csomag-nev">
            <h3>Csomag neve</h3>
            <span class="alcim">Csomag leírása</span>
        </div>
        <div class="csomag-ar">
            <span class="osszeg">5.990</span>
            <span class="idoszak">/hó</span>
        </div>
    </div>
</div>
```

### 4. Statisztikai kártyák készítése
```html
<div class="stat-kartya">
    <div class="stat-fejlec">
        <h4>Statisztika címe</h4>
        <span class="valtozas novekedes">+12.5%</span>
    </div>
    <div class="stat-szamok">
        <span class="fo-szam">15,234</span>
        <span class="masod-szam">Másodlagos adat</span>
    </div>
</div>
```

## Bővítési lehetőségek
- Animációk hozzáadása hover állapotokhoz
- Sötét téma implementálása
- Egyedi ikonok és grafikák használata
- Interaktív adatmegjelenítés
- Dinamikus tartalom betöltés
- Több kártyavariáció készítése

## Megjegyzések
- A komponensek újrahasználhatóak és módosíthatóak
- Figyelni kell a reszponzív megjelenésre
- Az animációk finomak és természetesek
- A színek és térközök konzisztensek
- A kódstruktúra moduláris és bővíthető

## Tippek
1. Használjunk BEM metodológiát a CSS osztályoknál
2. Alkalmazzunk CSS változókat a színekhez
3. Figyeljünk a megfelelő kontrasztarányokra
4. Teszteljük különböző képernyőméreteken
5. Ügyeljünk az akadálymentességre

## Gyakori hibák és megoldások

### Probléma: Nem megfelelő térközök
```css
/* Helytelen */
.kreativ-kartya {
    margin: 10px;
    padding: 10px;
}

/* Helyes */
.kreativ-kartya {
    margin: 1.5rem;
    padding: 1.5rem;
}
```

### Probléma: Nehezen módosítható színek
```css
/* Helytelen */
.kartya-fejlec {
    background: #0d6efd;
}

/* Helyes */
:root {
    --primary-color: #0d6efd;
}
.kartya-fejlec {
    background: var(--primary-color);
}
```

### Probléma: Túl erős animációk
```css
/* Helytelen */
.kreativ-kartya:hover {
    transform: scale(1.2);
    transition: transform 0.2s;
}

/* Helyes */
.kreativ-kartya:hover {
    transform: translateY(-5px);
    transition: transform 0.3s cubic-bezier(0.4, 0, 0.2, 1);
}
```

## Gyakorló feladatok
1. Készíts egyedi kártyavariációkat különböző effektekkel
2. Hozz létre többszintű timeline-t elágazásokkal
3. Tervezz összehasonlító árazó táblát
4. Implementálj interaktív statisztikai dashboardot
5. Építs komplex profilkártya rendszert

## További források
- [Bootstrap dokumentáció](https://getbootstrap.com/docs/5.3/components/card/)
- [CSS Tricks - A Complete Guide to Flexbox](https://css-tricks.com/snippets/css/a-guide-to-flexbox/)
- [MDN - Using CSS transitions](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Transitions/Using_CSS_transitions)
- [Animista - CSS Animations](https://animista.net/)
