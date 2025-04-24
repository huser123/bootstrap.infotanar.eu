# Modul 12 - Haladó Űrlap Technikák

## Tanulási célok
- Többlépéses űrlapok készítése és kezelése
- Dinamikus validációs megoldások implementálása
- Drag & drop fájlfeltöltés megvalósítása
- Összetett választómezők fejlesztése
- Felhasználóbarát űrlap visszajelzések kialakítása

## Főbb elemek és osztályok

### Többlépéses űrlap
- `.lepes-urlap` - Többlépéses űrlap konténer
- `.lepes-folyamat` - Folyamatjelző sáv
- `.lepes-panel` - Egyes űrlap lépések
- `.folyamat-pont` - Folyamatjelző pontok

### Lebegő input mezők
- `.lebego-input` - Lebegő címkés input konténer
- `.input-ikon` - Input mezők ikonjai
- `.validacio-ikon` - Validációs állapot ikonok
- `.validacio-visszajelzes` - Validációs üzenetek

### Fájlfeltöltés
- `.feltoltes-zona` - Drag & drop zóna
- `.feltoltott-fajlok` - Feltöltött fájlok lista
- `.fajl-elem` - Egyedi fájl elem
- `.fajl-progress` - Feltöltési folyamatjelző

### Összetett választómezők
- `.tag-valaszto` - Tag választó komponens
- `.multi-select` - Többszörös választó
- `.szin-valaszto` - Színválasztó komponens
- `.datum-valaszto` - Dátumválasztó tartomány

## Gyakorlati feladatok

### 1. Többlépéses regisztráció létrehozása
```html
<div class="lepes-urlap">
    <div class="lepes-folyamat">
        <!-- Folyamatjelző lépések -->
    </div>
    <div class="lepes-container">
        <!-- Űrlap lépések -->
    </div>
</div>
```

### 2. Drag & drop fájlfeltöltés implementálása
```html
<div class="feltoltes-zona">
    <input type="file" class="feltoltes-input">
    <label class="feltoltes-cimke">
        <!-- Feltöltési instrukciók -->
    </label>
</div>
```

### 3. Tag választó készítése
```html
<div class="tag-valaszto">
    <div class="tag-kontener">
        <div class="tag-elemek">
            <!-- Tag elemek -->
        </div>
        <input type="text" class="tag-input">
    </div>
</div>
```

## Bővítési lehetőségek
- Űrlap állapot mentés és visszaállítás
- AJAX alapú validáció
- Fájl előnézet generálás
- Egyedi validációs szabályok
- Űrlap teljesítmény optimalizálás
- Keyboard navigáció
- Egyedi hibaüzenetek

## Megjegyzések
- A többlépéses űrlapoknál mindig mentsük az állapotot
- Figyeljünk a validációs visszajelzések időzítésére
- A fájlfeltöltésnél ellenőrizzük a típust és méretet
- A választómezők legyenek kereshetőek
- Gondoskodjunk megfelelő hibakezelésről

## Tippek
1. Használjunk értelmes validációs üzeneteket
2. A folyamatjelző legyen egyértelmű
3. Adjunk azonnali visszajelzést
4. Tegyük lehetővé az előző lépésre való visszatérést
5. Alkalmazzunk megfelelő billentyűzet kezelést

## Példakódok

### Jelszó erősség ellenőrzés
```javascript
const jelszoErosseg = (jelszo) => {
    let pontszam = 0;
    // Minimum hossz
    if(jelszo.length >= 8) pontszam++;
    // Nagybetű
    if(/[A-Z]/.test(jelszo)) pontszam++;
    // Kisbetű
    if(/[a-z]/.test(jelszo)) pontszam++;
    // Szám
    if(/[0-9]/.test(jelszo)) pontszam++;
    // Speciális karakter
    if(/[^A-Za-z0-9]/.test(jelszo)) pontszam++;
    
    return pontszam;
};
```

### Drag & Drop kezelés
```javascript
const dropZone = document.querySelector('.feltoltes-zona');

dropZone.addEventListener('dragover', (e) => {
    e.preventDefault();
    dropZone.classList.add('aktiv');
});

dropZone.addEventListener('drop', (e) => {
    e.preventDefault();
    const fajlok = e.dataTransfer.files;
    fajlokFeldolgozasa(fajlok);
    dropZone.classList.remove('aktiv');
});
```

### Tag kezelés
```javascript
const tagInput = document.querySelector('.tag-input');
const tagKontener = document.querySelector('.tag-elemek');

tagInput.addEventListener('keydown', (e) => {
    if (e.key === 'Enter' && e.target.value) {
        const tag = document.createElement('span');
        tag.className = 'tag-elem';
        tag.textContent = e.target.value;
        tagKontener.appendChild(tag);
        e.target.value = '';
    }
});
```

## Gyakori hibák és megoldások

### Probléma: Hiányzó validációs visszajelzés
```html
<!-- Helytelen -->
<input type="email" class="form-control">

<!-- Helyes -->
<div class="validacio-mezo">
    <input type="email" class="form-control">
    <div class="validacio-visszajelzes">
        <span class="hiba-uzenet">Érvénytelen email cím</span>
    </div>
</div>
```

### Probléma: Nem reszponzív űrlap elemek
```css
/* Helytelen */
.input-kontener {
    width: 500px;
}

/* Helyes */
.input-kontener {
    width: 100%;
    max-width: 500px;
}
```

### Probléma: Túl gyors validáció
```javascript
// Helytelen
input.addEventListener('input', validateInput);

// Helyes
input.addEventListener('input', debounce(validateInput, 300));
```

## Gyakorló feladatok
1. Készíts többlépéses regisztrációs űrlapot állapot-mentéssel
2. Implementálj drag & drop képfeltöltést előnézettel
3. Hozz létre összetett szűrő komponenst
4. Építs validációs rendszert egyedi szabályokkal
5. Valósíts meg dinamikus form generátort

## További források
- [Form Validation Best Practices](https://example.com/form-validation)
- [Advanced Input Types](https://example.com/input-types)
- [File Upload Patterns](https://example.com/file-upload)
- [Multi-step Forms Guide](https://example.com/multi-step)

## Teljesítmény optimalizálás
1. Input események throttling/debouncing
2. Lazy loading form komponensek
3. Optimalizált fájlfeltöltés
4. Űrlap állapot cache-elés
5. Validációs szabályok optimalizálása

## Akadálymentességi szempontok
1. ARIA címkék használata
2. Billentyűzet navigáció támogatása
3. Magas kontrasztú visszajelzések
4. Screen reader kompatibilitás
5. Érthető hibaüzenetek

## Biztonsági megfontolások
1. CSRF védelem implementálása
2. Input sanitizáció
3. Fájl típus és méret ellenőrzés
4. Rate limiting
5. Biztonságos session kezelés

## Tesztelési stratégiák
1. Input validáció tesztek
2. Űrlap állapot tesztek
3. Fájlfeltöltés tesztek
4. Cross-browser kompatibilitás
5. Teljesítmény tesztek