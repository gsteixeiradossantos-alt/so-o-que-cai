#!/bin/zsh
# Renderiza criativos HTML em PNG 1080x1080 com o Chrome headless.
#
# Por que Chrome e não WeasyPrint: as artes usam Spectral, Hanken Grotesk e
# Space Mono vindas do Google Fonts. O Chrome busca e aplica; o WeasyPrint cai
# para a fonte de sistema e a arte sai com outra tipografia.
#
# Uso:  ./render.sh minidiag-v4-relogio-7q.html [...]
#       ./render.sh                # renderiza todos os *-7q.html
set -u
cd "$(dirname "$0")"
CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
SAIDA="../assets/anuncios"

arquivos=("$@")
if (( ${#arquivos} == 0 )); then arquivos=(*-7q.html); fi

for f in $arquivos; do
  nome="${f%.html}"
  tmp=$(mktemp -d)
  # A peça declara o próprio tamanho em <body data-render="LxA">. Sem isso, 1080x1080.
  tam=$(grep -o 'data-render="[0-9]*x[0-9]*"' "$f" | head -1 | grep -o '[0-9]*x[0-9]*')
  [[ -z "$tam" ]] && tam="1080x1080"
  # --virtual-time-budget dá tempo de a fonte remota chegar antes do disparo.
  "$CHROME" --headless --disable-gpu --hide-scrollbars \
    --force-device-scale-factor=1 --window-size="${tam/x/,}" \
    --virtual-time-budget=8000 \
    --screenshot="$tmp/out.png" "file://$PWD/$f" >/dev/null 2>&1
  if [[ -s "$tmp/out.png" ]]; then
    mv "$tmp/out.png" "$SAIDA/${nome}.png"
    echo "ok  $SAIDA/${nome}.png  ($(sips -g pixelWidth -g pixelHeight "$SAIDA/${nome}.png" 2>/dev/null | tail -2 | tr -d ' \n'))"
  else
    echo "FALHOU  $f"
  fi
  rm -rf "$tmp"
done
