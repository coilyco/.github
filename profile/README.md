# coilyco-gaming

Games, simulations, mods, and the tooling that keeps a game server and its
community running. By [Kai Ase Siren](https://coilysiren.me).

Most of it orbits [Eco](https://play.eco/) and the Sirens server, a real
multiplayer world with real players, so the tooling here answers questions
somebody actually asked in Discord.

[![sirens-echo // sirens-deep, a discord community agent harness](https://raw.githubusercontent.com/coilyco-gaming/sirens-echo/main/assets/banner.jpg)](https://github.com/coilyco-gaming/sirens-echo)

**[sirens-echo](https://github.com/coilyco-gaming/sirens-echo)** is home to both
Sirens Echo and Sirens Deep. Only a mention or reply in a configured channel
invokes it, a git-tracked access policy decides who can, per-user and per-guild
limits bound spend, and a deterministic validator rejects greetings, emoji, and
sign-offs before anything posts. Questions it could not answer become sanitized
issues.

## Eco

- **[eco-app](https://github.com/coilyco-gaming/eco-app)** - the companion
  service. A data-only MCP server over live world, market, crafting, and civics
  state, a browser SPA on top of it, and the C# server mods that feed both.
- **[eco-mods](https://github.com/coilyco-gaming/eco-mods)** - the gameplay mods
  themselves, C# with their Unity assets, plus CI that validates and publishes
  install-ready packages. This is the repo an Eco player or modder wants.

## Also here

- **[galaxy-gen](https://github.com/coilyco-gaming/galaxy-gen)** - procedural
  galaxy simulation, Rust compiled to WASM and rendered in the browser. Live at
  [galaxy-gen.coilysiren.me](https://galaxy-gen.coilysiren.me).
- **[factory-game-v3](https://github.com/coilyco-gaming/factory-game-v3)** - a
  factory simulation in Rust and Bevy, with a browser viewer.
- **[steam-ops](https://github.com/coilyco-gaming/steam-ops)** - read-only MCP
  over a Steam library, reading through three deliberately separate access
  planes: the Web API, the public storefront, and an authenticated client
  session.

## Elsewhere

[Forgejo](https://forgejo.coilysiren.me/coilyco-gaming) is canonical for
development, issues, and releases. GitHub is a verified mirror and the right
place to file a public bug.

[coilysiren.me](https://coilysiren.me) //
[coilyco-flight-deck](https://github.com/coilyco-flight-deck), the agent tooling
this org's services are built on
