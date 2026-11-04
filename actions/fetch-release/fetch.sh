#!/usr/bin/env bash
# Download named assets of one private release, then check them against SHA256SUMS.
# The token stays in curl's header argument, never echoed. See docs/fetch-release.md.
set -euo pipefail

: "${FETCH_TOKEN:?the minted token is empty}"
: "${FETCH_REPO:?}" "${FETCH_TAG:?}" "${FETCH_ASSETS:?}" "${FETCH_DEST:?}"

api="https://api.github.com/repos/${FETCH_REPO}"
auth=(-H "Authorization: Bearer ${FETCH_TOKEN}" -H "X-GitHub-Api-Version: 2022-11-28")
mkdir -p "$FETCH_DEST"
release=$(mktemp)
trap 'rm -f "$release"' EXIT

curl -fsS "${auth[@]}" -H "Accept: application/vnd.github+json" -o "$release" "${api}/releases/tags/${FETCH_TAG}"

fetch_asset() {
  local name=$1 id
  id=$(jq -r --arg n "$name" '.assets[] | select(.name == $n) | .id' "$release" | head -n1)
  [ -n "$id" ] || { echo "::error::release ${FETCH_TAG} has no asset ${name}" >&2; return 1; }
  curl -fsSL "${auth[@]}" -H "Accept: application/octet-stream" -o "${FETCH_DEST}/${name}" "${api}/releases/assets/${id}"
  echo "fetched ${name} ($(wc -c <"${FETCH_DEST}/${name}" | tr -d ' ') bytes)"
}

for name in $FETCH_ASSETS; do fetch_asset "$name"; done

[ -n "${FETCH_SUMS:-}" ] || exit 0
fetch_asset "$FETCH_SUMS"
cd "$FETCH_DEST"
for name in $FETCH_ASSETS; do
  want=$(awk -v n="$name" '$2 == n || $2 == "*" n {print $1}' "$FETCH_SUMS" | head -n1)
  [ -n "$want" ] || { echo "::error::${FETCH_SUMS} has no line for ${name}" >&2; exit 1; }
  got=$(sha256sum "$name" | awk '{print $1}')
  [ "$want" = "$got" ] || { echo "::error::${name} sha256 ${got} is not ${want}" >&2; exit 1; }
  echo "sha256 ok ${name}"
done
