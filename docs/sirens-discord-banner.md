# The Sirens Discord banner

The banner for the Sirens Discord server, as opposed to the two bot deployments
that live in it. `assets/sirens-discord-banner.jpg` is 1280 by 640 and
`assets/sirens-discord-banner-2x.jpg` is 2560 by 1280.

It lives here because the server is a community this organization owns and the
banner outlives whichever game or harness is active. `sirens-echo` owns its own
repository banner and marks, scoped by its `assets.md`.

## Provenance

ComfyUI writes its generation graph into every PNG it makes, and compositing
and JPEG conversion both discard it, so the parameters live here as text.

Only the background field is generated. The whale and every word are vector and
composite afterwards at full crispness, which is why the prompts exclude marine
life and text outright.

* **field** - the accepted `sirens-echo` field, regenerated at seed 4102. Checkpoint `Juggernaut-XL_v9_RunDiffusionPhoto_v2.safetensors`, 1536 by 768, 30 steps, cfg 7.0, `dpmpp_2m`, `normal`. Both prompts are recorded in sirens-echo `docs/banner-generation.md` and are not duplicated here.
* **mark** - `sirens-deep.png`, the committed canonical mark in sirens-echo.
* **type** - Avenir Next, Demi Bold 81 for the names in lilac with the separator in mint, Regular 31 for the description in mint, on a centred dark halo rather than an offset drop shadow.
* **generator** - `scripts/banners/sirens_banner.py` in `agentic-os-xxx`, exposed as its `banner-sirens` verb. It rebuilds the shipped sirens-echo banner from the same field first and refuses to draw anything new past 0.035 RMSE.

## Why the heading is 81 and not 50

The wide lockup sets names at 50 against a 31 description, and `sirens-echo //
sirens-deep` carries its description at 0.84 of the name width. `Sirens //
Discord` is far shorter, so at the same sizes the description runs to 1.46 and
becomes the widest thing in the frame, which puts the subordinate line first.

Raising the heading alone is the only correction that leaves the typeface,
weight, colour, separator, and halo untouched, and scaling the whole lockup
preserves the ratio rather than fixing it.

## Fitted forms

Neither file is cut to a Discord slot. Both are the 2:1 wide lockup, suiting a
link preview, a pinned image, or a README. Draw a fitted form when a surface
asks for one, which is the rule the banner system already states.
