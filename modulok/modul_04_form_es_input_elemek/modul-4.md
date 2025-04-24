# Modul 4 - Form és Input Elemek

## Tanulási célok
- Bootstrap űrlap elemek megismerése és használata
- Különböző input típusok alkalmazása
- Validációs visszajelzések kezelése
- Komplex űrlapok készítése
- Egyedi stílusok alkalmazása form elemekre

## Főbb elemek és osztályok

### Alap form elemek
- `.form-control` - Input mezők
- `.form-select` - Legördülő listák
- `.form-check` - Checkbox és radio gombok
- `.form-label` - Címkék
- `.form-text` - Segítő szövegek

### Speciális input típusok
- `.form-control-color` - Színválasztó
- `.form-range` - Csúszka
- `.form-control-lg/.form-control-sm` - Méretezett inputok
- `.form-floating` - Lebegő címkék
- `.input-group` - Input csoportok

### Validáció
- `.is-valid` - Sikeres validáció
- `.is-invalid` - Hibás validáció
- `.valid-feedback` - Sikeres visszajelzés
- `.invalid-feedback` - Hibaüzenet

## Gyakorlati feladatok
1. Készíts különböző űrlap variációkat:
   - Bejelentkezési űrlap
   - Regisztrációs űrlap
   - Kapcsolatfelvételi űrlap
   
2. Hozz létre validációs példákat:
   - Kötelező mezők
   - Email formátum ellenőrzés
   - Jelszó megerősítés
   
3. Kísérletezz a megjelenéssel:
   - Különböző input méretek
   - Input csoportok
   - Egyedi stílusok

## Bővítési lehetőségek
- Egyedi validációs üzenetek
- Többlépéses űrlapok
- Fájl feltöltő felület
- Dinamikus form elemek
- Színes témák és stílusok
- Modern input megjelenések

## Megjegyzések
- Mindig használj label elemeket
- Figyelj az űrlap elrendezésére
- A visszajelzések legyenek érthetőek
- Használj megfelelő input típusokat

## Tippek
1. Az űrlapok legyenek logikusan strukturáltak
2. A validációs üzenetek legyenek pontosak
3. Gondolj az akadálymentességre
4. Használj placeholder szövegeket
5. Figyelj a billentyűzetes navigációra

## Gyakori hibák elkerülése
- Ne használj felesleges mezőket
- Ne kérj túl sok információt
- Ügyelj a megfelelő mezőtípusokra
- Kerüld a túl bonyolult validációkat
- Ne feledd el a mobilos használhatóságot

## Gyakorlati példák
1. Bejelentkezési űrlap:
```html
<form class="urlap-doboz">
    <div class="mb-3">
        <label class="form-label">Email</label>
        <input type="email" class="form-control">
    </div>
    <div class="mb-3">
        <label class="form-label">Jelszó</label>
        <input type="password" class="form-control">
    </div>
    <button class="btn btn-primary">Bejelentkezés</button>
</form>
```

2. Input csoport:
```html
<div class="input-group">
    <span class="input-group-text">@</span>
    <input type="text" class="form-control">
</div>
```

3. Validációs példa:
```html
<div class="mb-3">
    <label class="form-label">Email</label>
    <input type="email" class="form-control is-invalid">
    <div class="invalid-feedback">
        Érvénytelen email cím!
    </div>
</div>
```