#!/bin/zsh
# Deploys triadehr.com (Cloudflare Worker "triadehr-site" with static assets).
# Copies ONLY index.html and the assets it references into a clean folder,
# so nothing else in this repo folder (it holds untracked patient files) can ship.
set -euo pipefail
HERE=${0:A:h}; SITE=${HERE:h}; OUT=$(mktemp -d)
mkdir -p "$OUT/public"; cp "$SITE/index.html" "$OUT/public/"
grep -oE 'assets/[A-Za-z0-9_./-]+' "$SITE/index.html" | sort -u | while read -r f; do
  mkdir -p "$OUT/public/${f:h}"; cp "$SITE/$f" "$OUT/public/$f"
done
cp "$HERE/worker.js" "$HERE/wrangler.jsonc" "$OUT/"
echo "Shipping:"; (cd "$OUT" && find public -type f | sort)
cd "$OUT" && npx -y wrangler@latest deploy
