#!/usr/bin/env bash
# Rigenera chapters/*.tex dagli appunti Markdown in ../Appunti,
# copia le immagini e compila main.pdf con tectonic.
# Uso:  ./build.sh
set -euo pipefail
cd "$(dirname "$0")"

mkdir -p chapters images
cp ../Appunti/assets/*.png images/

for f in ../Appunti/[0-9][0-9]\ -\ *.md; do
  n=$(basename "$f" | cut -c1-2)
  pandoc "$f" \
    -f markdown+wikilinks_title_after_pipe-implicit_figures \
    -t latex --top-level-division=chapter --syntax-highlighting=none \
    --lua-filter=obsidian.lua -o "chapters/$n.tex"
  echo "ok  $n  <-  $(basename "$f")"
done

tectonic main.tex
