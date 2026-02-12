# Berlin-Fall Endsieg (HOI4 Mod)

This repository contains a ready-to-install Hearts of Iron IV local mod.

## What the mod does

When Germany loses Berlin while at war:

1. A one-time event fires.
2. Germany gains a permanent spirit named **Defeat Cannot Come so Soon!**.
3. The spirit applies `surrender_limit = 1.0`.

> Karl Dönitz leader replacement has been removed per latest design direction.

## Mod folder layout

```text
mod/
├── Karl_Donitz_Last_Stand.mod
└── Karl_Donitz_Last_Stand/
    ├── descriptor.mod
    ├── common/
    │   ├── ideas/kd_ideas.txt
    │   └── on_actions/kd_on_actions.txt
    ├── events/kd_doenitz_events.txt
    └── localisation/english/kd_doenitz_l_english.yml
```

## Install (local/manual)

1. Go to your HOI4 user mod directory:
   - `Documents/Paradox Interactive/Hearts of Iron IV/mod/`
2. Copy both from this repo's `mod/` folder into that directory:
   - `Karl_Donitz_Last_Stand.mod`
   - `Karl_Donitz_Last_Stand/` (folder)
3. Start the HOI4 launcher and enable the mod.

## Build a shareable zip

From this repository root:

```bash
./scripts/build_local_release.sh
```

This generates `dist/Karl_Donitz_Last_Stand.zip` with the correct `mod/` layout.

## Key files to tune

- Berlin trigger condition (`controls_state = 64`):
  - `mod/Karl_Donitz_Last_Stand/common/on_actions/kd_on_actions.txt`
- Surrender spirit modifier (`surrender_limit = 1.0`):
  - `mod/Karl_Donitz_Last_Stand/common/ideas/kd_ideas.txt`
- Event and naming text:
  - `mod/Karl_Donitz_Last_Stand/events/kd_doenitz_events.txt`
  - `mod/Karl_Donitz_Last_Stand/localisation/english/kd_doenitz_l_english.yml`
