# coilyco

Open-source agent tooling by [Kai Ase Siren](https://coilysiren.me). An agent is
only as safe as the surface you hand it, so here the surface is declared in a
config file and enforced at the call.

<table>
<tr>
<td width="50%"><a href="https://github.com/coilyco/umbra"><img src="https://coilysiren.me/images/banners/umbra.jpg" alt="umbra - a config driven occlusion framework"></a><br><br>Declare what a tool may run. Arguments are validated before the process starts, any verb you did not grant is refused, and every call lands in an append-only audit log. The <code>umbra</code> driver builds the guarded CLI from that declaration, so there is no hand-written boundary code to get wrong. The plan for <a href="https://github.com/coilyco/umbra/blob/main/docs/umbra-v2.md">umbra v2</a> rebuilds it on urfave/cli v4, as v4's first real downstream.</td>
<td width="50%"><a href="https://github.com/coilyco/housecast"><b>housecast</b></a> // <code>grade</code> - Human-graded behavior evaluations, for any agent<br><br>You bring the cases and the runner, and housecast puts each answer in front of a person with its target beside it, then records the grade. Grading stays apart from running, so a board can be regraded without calling a model again.</td>
</tr>
</table>

## Install

```sh
brew tap coilyco-flight-deck/tap https://forgejo.coilysiren.me/coilyco/homebrew-tap
brew install coilyco-flight-deck/tap/umbra
```

```powershell
scoop bucket add coilyco-flight-deck https://forgejo.coilysiren.me/coilyco/scoop-bucket
scoop install coilyco-flight-deck/umbra
```

`aos` installs the same way from the same tap or bucket. housecast has no
PyPI release yet, so depend on it from GitHub with uv, as its
[README](https://github.com/coilyco/housecast#installing-it-elsewhere) shows.

## Also here

**Underneath.** [agentic-os](https://github.com/coilyco/agentic-os)
is the host layer the rest of this runs on, a reference implementation rather
than something to adopt.
[agent-proxy](https://github.com/coilyco/agent-proxy) is the
observability and trajectory data plane, in active transition, so its
interfaces are unstable.
[node-stats-mcp](https://github.com/coilyco/node-stats-mcp) is a
read-only MCP for node-local Linux and Kubernetes diagnostics.
[homebrew-tap](https://github.com/coilyco/homebrew-tap) and
[scoop-bucket](https://github.com/coilyco/scoop-bucket) are the
distribution channels.

**Games.** [galaxy-gen](https://github.com/coilyco/galaxy-gen) is a
procedural galaxy simulation, Rust compiled to WASM and rendered in the
browser. Live at [galaxy-gen.coilysiren.me](https://galaxy-gen.coilysiren.me).

## Elsewhere

[Forgejo](https://forgejo.coilysiren.me/coilyco) is canonical for
development, issues, and releases. GitHub is a verified mirror and the right
place to file a public bug.

[coilysiren.me](https://coilysiren.me)
