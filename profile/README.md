# coilyco

Open-source agent tooling by [Kai Ase Siren](https://coilysiren.me). An agent is
only as safe as the surface you hand it, so here the surface is declared in a
config file and enforced at the call.

<table>
<tr>
<td width="50%"><a href="https://github.com/coilyco/umbra"><img src="https://coilysiren.me/images/banners/umbra.jpg" alt="umbra - a config driven occlusion framework"></a><br><br>Declare what a tool may run. Arguments are validated before the process starts, each verb needs its own scope token, and every call lands in an append-only audit log. The <code>umbra</code> driver builds the guarded CLI from that declaration, so there is no hand-written boundary code to get wrong.</td>
<td width="50%"><a href="https://github.com/coilyco/mcp-beaver"><img src="https://coilysiren.me/images/banners/mcp-beaver.jpg" alt="mcp-beaver // .mcp.kdl - A MCP server generator with a natural flow"></a><br><br>One guardfile in, one guarded MCP server out. An operation nobody declared has no tool and no endpoint, so the blast radius of a write-capable MCP is one small file you can read end to end.</td>
</tr>
<tr>
<td width="50%"><a href="https://github.com/coilyco/agent-compose"><img src="https://coilysiren.me/images/banners/agent-compose.jpg" alt="agent-compose // $ acompose - A name, a job, and the context to do it"></a><br><br>A role is context, never permission. The composed bundle is plain files you can read and diff before a run, and it grants no credential, mount, or command. Claude Code, Codex, Goose and OpenCode take the same one.</td>
<td width="50%"><a href="https://github.com/coilyco/housecast"><b>housecast</b></a> // <code>roster.yaml</code> - Agent context, cast from one roster<br><br>One YAML file declares every role. The bundle an agent gets and the scorecard that grades it are cast from that file, so the graded artifact and the shipped artifact are identical.</td>
</tr>
</table>

## Install

```sh
brew tap coilyco-flight-deck/tap https://forgejo.coilysiren.me/coilyco/homebrew-tap
brew install coilyco-flight-deck/tap/agent-compose
```

```powershell
scoop bucket add coilyco-flight-deck https://forgejo.coilysiren.me/coilyco/scoop-bucket
scoop install coilyco-flight-deck/agent-compose
```

`umbra` and `aos` install the same way from the same tap or bucket. mcp-beaver
is not a CLI, and ships as an image and a Helm chart.

## Also here

**MCP servers.** Small, read-only, each stating its exact tool inventory and
what it refuses to do:
[bluesky-mcp](https://github.com/coilyco/bluesky-mcp) for
authenticated Bluesky with no write tool at all,
[node-stats-mcp](https://github.com/coilyco/node-stats-mcp) for
node-local Linux and Kubernetes diagnostics, and
[lunch-money-k8s](https://github.com/coilyco/lunch-money-k8s) for
the Lunch Money API.

**Underneath.** [agentic-os](https://github.com/coilyco/agentic-os)
is the host layer the rest of this runs on, a reference implementation rather
than something to adopt.
[agent-proxy](https://github.com/coilyco/agent-proxy) is the
observability and trajectory data plane, in active transition, so its
interfaces are unstable.
[homebrew-tap](https://github.com/coilyco/homebrew-tap) and
[scoop-bucket](https://github.com/coilyco/scoop-bucket) are the
distribution channels.

**Retired, kept for the record.**
[ward](https://github.com/coilyco/ward), the governed execution
layer that preceded this stack, and
[reddit-mcp](https://github.com/coilyco/reddit-mcp). Retired work is
archived here and removed from Forgejo, so GitHub carries the record.

## Games

Games, simulations, mods, and the tooling that keeps a game server and its
community running. Most of it orbits [Eco](https://play.eco/) and the Sirens server, a real
multiplayer world with real players, so the tooling here answers questions
somebody actually asked in Discord.

[![sirens-echo // sirens-deep, a discord community agent harness](https://raw.githubusercontent.com/coilyco/sirens-echo/main/assets/banner.jpg)](https://github.com/coilyco/sirens-echo)

**[sirens-echo](https://github.com/coilyco/sirens-echo)** is home to both
Sirens Echo and Sirens Deep. Only a mention or reply in a configured channel
invokes it, a git-tracked access policy decides who can, per-user and per-guild
limits bound spend, and a deterministic validator rejects greetings, emoji, and
sign-offs before anything posts. Questions it could not answer become sanitized
issues.

### Eco

- **[eco-app](https://github.com/coilyco/eco-app)** - the companion
  service. A data-only MCP server over live world, market, crafting, and civics
  state, a browser SPA on top of it, and the C# server mods that feed both.
- **[eco-mods](https://github.com/coilyco/eco-mods)** - the gameplay mods
  themselves, C# with their Unity assets, plus CI that validates and publishes
  install-ready packages. This is the repo an Eco player or modder wants.

### Also here

- **[galaxy-gen](https://github.com/coilyco/galaxy-gen)** - procedural
  galaxy simulation, Rust compiled to WASM and rendered in the browser. Live at
  [galaxy-gen.coilysiren.me](https://galaxy-gen.coilysiren.me).
- **[factory-game-v3](https://github.com/coilyco/factory-game-v3)** - a
  factory simulation in Rust and Bevy, with a browser viewer.
- **[steam-ops](https://github.com/coilyco/steam-ops)** - read-only MCP
  over a Steam library, reading through three deliberately separate access
  planes: the Web API, the public storefront, and an authenticated client
  session.

## Elsewhere

[Forgejo](https://forgejo.coilysiren.me/coilyco) is canonical for
development, issues, and releases. GitHub is a verified mirror and the right
place to file a public bug.

[coilysiren.me](https://coilysiren.me)
