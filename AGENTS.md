---
ward:
  workflow: merge-remote-main
---
# Agent instructions

This repository owns the `coilyco-bridge` organization profile and shared
review metadata.

## Boundaries

* Edit `profile/README.md` for the public organization landing page.
* Keep all profile and documentation content public-safe.
* Regenerate the repository pointer skill through agentic-os. Do not hand-edit
  its generated `SKILL.md`.

## Checkout residency

This repo is not in Agent Compose's `repository-plan.yaml`, so it has no
resident checkout under `~/projects/<owner>/`. That is intentional. Work it
from a task-scoped temporary clone, and remove that clone once the work lands.

A temporary root can be purged at any time, so commit and push before pausing,
switching tasks, or ending a session. The remote is the only durable artifact.

## Scope

The public organization profile and shared review metadata for `coilyco-bridge`.
Nothing else belongs here.

## Project shape

`profile/README.md` is the landing page both forges render. This repo carries no
CODEOWNERS: a standing review request read as a gate, so 1b94532 dropped it.

## Repo boundaries

Organization presentation and review defaults only. Project work belongs in
the repository that owns it.

## Commands

No dev verbs, so this repo ships no justfile. [`.ward/ward.yaml`](.ward/ward.yaml)
is present so ward's repocfg loader recognizes the repo.

## Validation

Run `pre-commit run --all-files` before committing. The catalog suite is
consumed by upstream ref and never forked.

## Safety

Everything here is public. Keep opaque ids, host identifiers, and credentials
out of the tree.

## Cross-repo contracts

The catalog pre-commit hooks are authored in agentic-os and consumed here by
upstream rev. Canonical development happens on Forgejo.

## Release

Commit directly to `main` and push to canonical Forgejo.

## Agent rules

Use she/her for Kai. No em dashes, italics, or semicolons in prose. Name the
actor in every action sentence.

## See also

- [README.md](README.md) - what this repository is.
- [docs/FEATURES.md](docs/FEATURES.md) - what it provides.
- [.ward/ward.yaml](.ward/ward.yaml) - catalog metadata.
