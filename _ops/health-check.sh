#!/usr/bin/env bash
# Quick structural health check. The lint prompt does the semantic work;
# this catches the mechanical problems in one second.
set -uo pipefail
cd "$(dirname "$0")/.."

echo "=== Counts ==="
echo "Sources in raw/:  $(find raw -type f ! -name '.*' 2>/dev/null | wc -l)"
echo "Wiki pages:       $(find wiki -name '*.md' | wc -l)"
echo "Open conflicts:   $(grep -rl 'conflict\] OPEN' wiki 2>/dev/null | wc -l)"

echo
echo "=== Pages missing frontmatter ==="
for f in $(find wiki -name '*.md'); do
  head -1 "$f" | grep -q '^---$' || echo "  $f"
done

echo
echo "=== Pages missing review_by ==="
grep -L 'review_by:' $(find wiki -name '*.md') 2>/dev/null | sed 's/^/  /'

echo
echo "=== Facts past review_by ==="
TODAY=$(date +%Y-%m-%d)
for f in $(find wiki -name '*.md'); do
  d=$(grep -m1 '^review_by:' "$f" | awk '{print $2}')
  [[ -n "${d:-}" && "$d" < "$TODAY" ]] && echo "  $f (due $d)"
done

echo
echo "=== Orphan pages (no incoming wiki links) ==="
for f in $(find wiki -name '*.md'); do
  base=$(basename "$f" .md)
  [[ "$base" == "index" || "$base" == "log" ]] && continue
  grep -rq "\[\[$base" wiki --include='*.md' || echo "  $f"
done

echo
echo "=== Possible credential leaks ==="
grep -rniE '(api[_-]?key|secret|bearer |password|token)[[:space:]]*[:=][[:space:]]*[A-Za-z0-9_\-]{12,}' wiki 2>/dev/null | sed 's/^/  /' || echo "  none"
