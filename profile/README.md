# coilyco-flight-deck

Open-source agent tooling by [Kai Ase Siren](https://coilysiren.me). An agent is
only as safe as the surface you hand it, so here the surface is declared in a
config file and enforced at the call.

<table>
<tr>
<td width="50%"><a href="https://github.com/coilyco-flight-deck/umbra"><img src="https://coilysiren.me/images/banners/umbra.jpg" alt="umbra - a config driven occlusion framework"></a><br><br>Declare what a tool may run. Arguments are validated before the process starts, each verb needs its own scope token, and every call lands in an append-only audit log. The <code>umbra</code> driver builds the guarded CLI from that declaration, so there is no hand-written boundary code to get wrong.</td>
<td width="50%"><a href="https://github.com/coilyco-flight-deck/mcp-beaver"><img src="https://coilysiren.me/images/banners/mcp-beaver.jpg" alt="mcp-beaver // .mcp.kdl - A MCP server generator with a natural flow"></a><br><br>One guardfile in, one guarded MCP server out. An operation nobody declared has no tool and no endpoint, so the blast radius of a write-capable MCP is one small file you can read end to end.</td>
</tr>
<tr>
<td width="50%"><a href="https://github.com/coilyco-flight-deck/agent-compose"><img src="https://coilysiren.me/images/banners/agent-compose.jpg" alt="agent-compose // $ acompose - A name, a job, and the context to do it"></a><br><br>A role is context, never permission. The composed bundle is plain files you can read and diff before a run, and it grants no credential, mount, or command. Claude Code, Codex, Goose and OpenCode take the same one.</td>
<td width="50%"><a href="https://github.com/coilyco-flight-deck/housecast"><b>housecast</b></a> // <code>roster.yaml</code> - Agent context, cast from one roster<br><br>One YAML file declares every role. The bundle an agent gets and the scorecard that grades it are cast from that file, so the graded artifact and the shipped artifact are identical.</td>
</tr>
</table>

## Install

```sh
brew tap coilyco-flight-deck/tap https://forgejo.coilysiren.me/coilyco-flight-deck/homebrew-tap
brew install coilyco-flight-deck/tap/agent-compose
```

```powershell
scoop bucket add coilyco-flight-deck https://forgejo.coilysiren.me/coilyco-flight-deck/scoop-bucket
scoop install coilyco-flight-deck/agent-compose
```

`umbra` and `aos` install the same way from the same tap or bucket. mcp-beaver
is not a CLI, and ships as an image and a Helm chart.

## Also here

**MCP servers.** Small, read-only, each stating its exact tool inventory and
what it refuses to do:
[bluesky-mcp](https://github.com/coilyco-flight-deck/bluesky-mcp) for
authenticated Bluesky with no write tool at all,
[node-stats-mcp](https://github.com/coilyco-flight-deck/node-stats-mcp) for
node-local Linux and Kubernetes diagnostics, and
[lunch-money-k8s](https://github.com/coilyco-flight-deck/lunch-money-k8s) for
the Lunch Money API.

**Underneath.** [agentic-os](https://github.com/coilyco-flight-deck/agentic-os)
is the host layer the rest of this runs on, a reference implementation rather
than something to adopt.
[agent-proxy](https://github.com/coilyco-flight-deck/agent-proxy) is the
observability and trajectory data plane, in active transition, so its
interfaces are unstable.
[homebrew-tap](https://github.com/coilyco-flight-deck/homebrew-tap) and
[scoop-bucket](https://github.com/coilyco-flight-deck/scoop-bucket) are the
distribution channels.

**Retired, kept for the record.**
[ward](https://github.com/coilyco-flight-deck/ward), the governed execution
layer that preceded this stack, and
[reddit-mcp](https://github.com/coilyco-flight-deck/reddit-mcp). Retired work is
archived here and removed from Forgejo, so GitHub carries the record.

## Elsewhere

[Forgejo](https://forgejo.coilysiren.me/coilyco-flight-deck) is canonical for
development, issues, and releases. GitHub is a verified mirror and the right
place to file a public bug.

[coilysiren.me](https://coilysiren.me) //
[coilyco-gaming](https://github.com/coilyco-gaming) //
[coilyco-bridge](https://github.com/coilyco-bridge)
