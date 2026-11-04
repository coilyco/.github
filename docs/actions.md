# Shared CI actions

The composite actions every coilyco workflow uses live here, under `actions/`. They moved out of
`coilyco/agentic-os` (COI-3360) because that repo goes private, and GitHub does not let a public
repository use an action stored in a private one. This repository stays public.

## What is here

* `setup-ci` - installs the pinned fleet tools from `install.sh` (every tool carries a sha256),
  and, when given the App credential, lets pre-commit fetch the private agentic-os hooks.
* `app-token` - mints a short-lived coilyco-ops App token for release trains. It takes the App id
  and the base64 key as inputs and masks the decoded key.
* `tag-bump`, `create-release`, `upload-release-asset` - the release trains, sharing `_lib/release.sh`.

## Hook fetch auth

`setup-ci` mints an installation token scoped to `coilyco/agentic-os` with contents read only. It
exports an `Authorization` header through `GIT_CONFIG_*` env, matched to that repository's URL, so
pre-commit's own `git clone` sends it and no other host or repository sees it. The header is masked,
never written to disk, and the token is revoked when the job ends. The log prints which repository
the token covers and whether git sent the header.

Pass the credential with the two secrets of the calling repository:

* `app_id` - secret `COILYCO_OPS_APP_ID`
* `private_key_base64` - secret `COILYCO_OPS_APP_PRIVATE_KEY_BASE64`

## Limits

* A fork pull request and a Dependabot run get no repository secrets. `setup-ci` then warns and the
  hook fetch fails once agentic-os is private. This is the platform's rule and is not worked around.
* The token lives one hour, so a job that runs pre-commit later than that fails.
* The header stays in the job env after `setup-ci`, so every later step in the job can send it.

## Pinning

A caller pins by commit sha, `coilyco/.github/actions/<name>@<sha>`, and bumps it on purpose.
