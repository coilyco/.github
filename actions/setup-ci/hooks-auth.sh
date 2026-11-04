#!/usr/bin/env bash
# Send an Authorization header on every agentic-os git fetch in this job.
# The header rides in GIT_CONFIG_* env, never on disk. See docs/actions.md.
set -euo pipefail

: "${AOS_FETCH_TOKEN:?the minted token is empty}"
: "${GITHUB_ENV:?GITHUB_ENV is unset}"

basic=$(printf 'x-access-token:%s' "$AOS_FETCH_TOKEN" | base64 | tr -d '\n')
# GitHub does not know the base64 form is secret, so mask it first.
echo "::add-mask::$basic"

start=${GIT_CONFIG_COUNT:-0}
count=$start
for url in https://github.com/coilyco/agentic-os https://github.com/coilyco/agentic-os.git; do
  echo "GIT_CONFIG_KEY_${count}=http.${url}.extraheader" >>"$GITHUB_ENV"
  echo "GIT_CONFIG_VALUE_${count}=AUTHORIZATION: basic ${basic}" >>"$GITHUB_ENV"
  export "GIT_CONFIG_KEY_${count}=http.${url}.extraheader" "GIT_CONFIG_VALUE_${count}=AUTHORIZATION: basic ${basic}"
  count=$((count + 1))
done
echo "GIT_CONFIG_COUNT=${count}" >>"$GITHUB_ENV"
export GIT_CONFIG_COUNT=$count

# Log proof: the token covers agentic-os only and git sends it.
repos=$(curl -fsS -H "Authorization: Bearer ${AOS_FETCH_TOKEN}" -H "Accept: application/vnd.github+json" https://api.github.com/installation/repositories)
echo "token covers: $(printf '%s' "$repos" | grep -o '"full_name": *"[^"]*"' | tr '\n' ' ')"
sent=$(GIT_TRACE_CURL=1 GIT_TERMINAL_PROMPT=0 git ls-remote https://github.com/coilyco/agentic-os HEAD 2>&1 | grep -ci 'authorization: basic <redacted>' || true)
echo "git ls-remote sent an Authorization header: $([ "$sent" -gt 0 ] && echo yes || echo no)"
[ "$sent" -gt 0 ] || { echo "::error::git did not send the agentic-os header" >&2; exit 1; }
