# coilyco-gaming

Games, simulations, mods, and the tooling that keeps a game server and its
community running. By [Kai Ase Siren](https://coilysiren.me).

Most of this orbits [Eco](https://play.eco/) and the Sirens server, which is a
real multiplayer world with real players, so the tooling here answers questions
somebody actually asked in Discord.

## Projects

- **[sirens-echo](https://github.com/coilyco-gaming/sirens-echo)** - a Discord
  community agent harness, home of Sirens Echo and Sirens Deep. Only a mention
  or reply in a configured channel invokes it, a git-tracked access policy
  decides who can, per-user and per-guild limits bound spend, and a
  deterministic validator rejects greetings, emoji, and sign-offs before
  anything posts. Unanswered questions become sanitized issues.
- **[eco-app](https://github.com/coilyco-gaming/eco-app)** - the companion
  service for the server. A data-only MCP server over live world, market,
  crafting, and civics state, a browser SPA on top of it, and the C# server
  mods that feed both. This is where the intelligence layer lives.
- **[eco-mods](https://github.com/coilyco-gaming/eco-mods)** - the gameplay
  mods themselves, in C# with their Unity assets, plus CI that validates and
  publishes install-ready packages. This is the repo an Eco player or modder
  wants.

## Also here

- [galaxy-gen](https://github.com/coilyco-gaming/galaxy-gen) - procedural
  galaxy simulation, Rust compiled to WASM and rendered in the browser. Live at
  [galaxy-gen.coilysiren.me](https://galaxy-gen.coilysiren.me).
- [factory-game-v3](https://github.com/coilyco-gaming/factory-game-v3) - a
  factory simulation in Rust and Bevy, with a browser viewer.
- [steam-ops](https://github.com/coilyco-gaming/steam-ops) - read-only MCP over
  a Steam library, reading through three deliberately separate access planes:
  the Web API, the public storefront, and an authenticated client session.

## Elsewhere

[Forgejo](https://forgejo.coilysiren.me/coilyco-gaming) is canonical for
development, issues, and releases. GitHub is a verified mirror and the right
place to file a public bug.

- [coilysiren.me](https://coilysiren.me) - personal site and writing
- [coilyco-flight-deck](https://github.com/coilyco-flight-deck) - the agent
  tooling this org's services are built on
