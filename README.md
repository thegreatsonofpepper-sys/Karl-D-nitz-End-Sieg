# Karl Dönitz Last-Stand Mod (HOI4)

This mini-mod makes Germany continue fighting after Berlin is lost:

- Once Germany is at war and no longer controls Berlin (state `64`), an event fires.
- The current country leader is retired.
- Karl Dönitz is created as the new German leader.
- Germany gains a permanent spirit that applies `surrender_limit = -1.0`.

That modifier is the core of the "do not capitulate until everything is occupied" behavior.

## What is in this repository

- `common/on_actions/kd_on_actions.txt`  
  Daily trigger that checks Berlin control and fires the event once.
- `events/kd_doenitz_events.txt`  
  Country event that swaps leadership to Dönitz and grants the spirit.
- `common/ideas/kd_ideas.txt`  
  Spirit definition with the surrender-limit modifier.
- `localisation/english/kd_doenitz_l_english.yml`  
  Event + idea text.

## Install / use

1. Place these files in your mod folder using the same directory structure.
2. Enable the mod in the HOI4 launcher.
3. Start as Germany and enter a war.
4. Lose Berlin control and verify the event fires.

## Tuning notes

- If your modpack changes surrender math, adjust `surrender_limit` in:
  - `common/ideas/kd_ideas.txt`
- If your setup uses a different Berlin state id, change the `controls_state` check in:
  - `common/on_actions/kd_on_actions.txt`

## GitHub page (optional)

You **do not** need GitHub Pages for this mod to work.
Use GitHub Pages only if you want public documentation/screenshots/changelog pages.
