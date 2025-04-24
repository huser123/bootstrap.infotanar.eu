# Modul 7 - Animációk és Átmenetek

## Tanulási célok
- CSS átmenetek (transitions) használata
- CSS animációk készítése és testreszabása
- Mikro-interakciók implementálása
- Komplex animációs effektek létrehozása
- Teljesítmény-optimalizált animációk készítése

## Főbb elemek és osztályok

### Átmenetek
- `.atmenet-kartya` - Méretváltozási effekt
- `.atmenet-kartya-szin` - Színátmenetek
- `.atmenet-kartya-forgatas` - Forgatási effektek
- `.atmenet-kartya-osszetett` - Több effekt kombinálása

### Alap Animációk
- `.pulzalas` - Pulzáló effektus
- `.lebego` - Lebegő mozgás
- `.razo` - Rázó effektus
- `.villogo` - Villogó effektus

### Mikro-interakciók
- `.gomb-hover-*` - Gomb interakciók
- `.input-effekt-*` - Input mező effektek
- `.toltosav-*` - Töltősáv animációk
- `.animalt-ikon` - Ikon animációk

### Komplex Példák
- `.kep-kartya` - Képkártya overlay effekttel
- `.flip-kartya` - 3D forgó kártya
- `.timeline` - Animált idővonal

## Gyakorlati feladatok
1. Készíts egyszerű hover effekteket
   - Méretváltozás
   - Színátmenet
   - Forgatás
   - Árnyék effektek

2. Hozz létre ismétlődő animációkat
   - Pulzálás
   - Lebegés
   - Villogás
   - Forgás

3. Implementálj interaktív elemeket
   - Gomb effektek
   - Input mező animációk
   - Töltősávok
   - Ikon animációk

4. Építs komplex példákat
   - Overlay effektek
   - Flip kártyák
   - Timeline animációk
   - Párhuzamos animációk

## Bővítési lehetőségek
- Egyedi keyframe animációk
- CSS változók használata animációkhoz
- 3D transzformációk
- Scroll-triggeres animációk
- Többlépcsős animációk
- Teljesítmény-optimalizálás

## Megjegyzések
- Az animációk legyenek finomak és természetesek
- Figyelj az időzítésekre és az easing függvényekre
- Ne használj túl sok párhuzamos animációt
- Mindig tesztelj különböző böngészőkben
- Gondolj az akadálymentességre

## Tippek
1. Használj megfelelő easing függvényeket
2. Az animációk időtartama legyen 300-500ms között
3. Kerüld a túl sok elem egyidejű animálását
4. Használj transform és opacity tulajdonságokat
5. Figyelj a mobilos teljesítményre

## Példakódok

### Egyszerű átmenet
```css
.elem {
    transition: all 0.3s ease;
}
.elem:hover {
    transform: scale(1.1);
}
```

### Keyframe animáció
```css
@keyframes pulzal {
    0% { transform: scale(1); }
    50% { transform: scale(1.05); }
    100% { transform: scale(1); }
}
.pulzalo {
    animation: pulzal 2s infinite;
}
```

### Komplex effekt
```css
.kartya {
    transition: all 0.5s cubic-bezier(0.4, 0, 0.2, 1);
}
.kartya:hover {
    transform: translateY(-10px) rotate(2deg);
    box-shadow: 0 15px 30px rgba(0,0,0,0.2);
}
```

## Gyakori hibák elkerülése
- Ne animálj layout tulajdonságokat
- Kerüld a nehéz CSS filtereket
- Ne használj túl hosszú animációkat
- Figyelj a will-change tulajdonság használatára
- Ne feledd a fallback megoldásokat

## Gyakorló feladatok
1. Készíts animált navigációs menüt
2. Hozz létre betöltő animációkat
3. Készíts scroll-reveal effekteket
4. Implementálj értesítési animációkat
5. Készíts animált modált/popup ablakot