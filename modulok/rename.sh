#!/bin/bash

# Függvény az ékezetes karakterek cseréjéhez
remove_accents() {
  echo "$1" | sed \
    -e 's/[áÁ]/a/g' \
    -e 's/[éÉ]/e/g' \
    -e 's/[íÍ]/i/g' \
    -e 's/[óÓöÖőŐ]/o/g' \
    -e 's/[úÚüÜűŰ]/u/g'
}

# Mappák bejárása az aktuális könyvtárban
for dir in */; do
  # Az eredeti mappa nevét eltávolítjuk az utolsó perjellel
  original_name="${dir%/}"

  # Mappa neve kisbetűsítés, ékezetmentesítés és szóközök helyettesítése
  sanitized_name=$(remove_accents "$original_name")
  new_name=$(echo "$sanitized_name" | tr '[:upper:]' '[:lower:]' | tr ' ' '_')

  # Ha az új név üres, hagyjuk ki
  if [[ -z "$new_name" ]]; then
    echo "Hiba: Az új név üres! Eredeti név: '$original_name'"
    continue
  fi

  # Ha az új név nem egyezik az eredetivel, akkor átnevezzük
  if [[ "$original_name" != "$new_name" ]]; then
    echo "Átnevezés: '$original_name' -> '$new_name'"
    mv -- "$original_name" "$new_name"
  fi

done
