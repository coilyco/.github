# Fetching a private release

`fetch-release` downloads named assets of a private release (COI-3302). It mints a Contents-read
installation token for one repository of the running repository's owner, fetches the assets over
the API, and checks each against the release's `SHA256SUMS`. The token is also an output, for a
docker build secret. It is masked and revoked when the job ends.

## Inputs

* `app_id`, `private_key_base64` - the secrets of a read-only App installed on that repository.
  Callers pass `COILYCO_TREEHOUSE_READ_APP_ID` and
  `COILYCO_TREEHOUSE_READ_APP_PRIVATE_KEY_BASE64` for treehouse-servers. Which App backs them is
  a secret value, so changing it changes no code.
* `repo` - the repository name, default `treehouse-servers`.
* `tag`, `assets` - the release tag and the space separated asset names.
* `dest`, `sums` - the output directory, and the checksum asset name (empty skips the check).

## Limits

* A fork pull request and a Dependabot run get no secrets, so the mint step fails there.
* The token lives one hour.
