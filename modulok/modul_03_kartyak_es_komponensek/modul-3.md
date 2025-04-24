# Modul 3 - Kártyák és Komponensek

## Tanulási célok
- Bootstrap kártya komponens megismerése és testreszabása
- Különböző kártya elrendezések és stílusok létrehozása
- CSS effektek és animációk használata
- Interaktív elemek készítése

## Főbb elemek és osztályok

### Alap kártya struktúra
- `.card` - Alap kártya konténer
- `.card-body` - Kártya tartalmi rész
- `.card-title` - Kártya címe
- `.card-text` - Kártya szövege
- `.card-img-top` - Felső kép
- `.card-header` - Kártya fejléc

### Speciális kártya típusok
- `.card-img-overlay` - Képre helyezett tartalom
- `.card-group` - Kártya csoport
- `.row g-0` - Horizontális kártya elrendezés

### Egyedi CSS osztályok
- `.kartya-hover` - Lebegő effekt
- `.kartya-fordito` - 3D forgás effekt
- `.kartya-info` - Információs overlay
- `.kartya-overlay` - Képre helyezett tartalom sötétítéssel

## Gyakorlati feladatok
1. Készíts különböző kártya variációkat:
   - Egyszerű szöveges kártya
   - Képes kártya
   - Fejléces kártya
   
2. Hozz létre interaktív kártyákat:
   - Hover effekttel
   - Forgó kártya
   - Információs overlay
   
3. Kísérletezz az elrendezésekkel:
   - Horizontális kártya
   - Kártya csoport
   - Grid rendszerben elhelyezett kártyák

## Bővítési lehetőségek
- Egyedi animációk hozzáadása
- További interakciók beépítése
- Különböző színsémák alkalmazása
- Képgaléria készítése kártyákból
- Termék kártyák készítése árakkal
- Blog post kártyák dátummal és kategóriákkal

## Megjegyzések
- A kártyák mindig container-ben vagy grid rendszerben legyenek
- Figyelj a képek megfelelő méretezésére
- Az interakciók legyenek simák és természetesek
- Használj árnyékokat a mélység érzékeltetésére

## Tippek
1. A transform és transition tulajdonságokat használd az animációkhoz
2. A hover effekteket mindig teszteld
3. Az overlay elemekhez használj rgba színeket
4. A képeket mindig optimalizáld
5. Figyelj a szövegek kontrasztjára overlay esetén

## Gyakori hibák elkerülése
- Ne használj túl erős árnyékokat
- Kerüld a túl sok animációt
- Figyelj a teljesítményre animációk esetén
- Mindig adj megfelelő alt attribútumot a képeknek
- Teszteld különböző háttérszínekkel