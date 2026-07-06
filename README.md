# Objective Race

`objective_race` is a Minecraft Java datapack for fast free-for-all rounds where players race to complete shared objectives before anyone else reaches the target score.

Default round profile:

- Mode: `shared_evolving`
- Target count: `5`
- Difficulty preset: `balanced`
- Round time: `600` seconds
- Keep inventory: `on`
- Powerups: reserved, disabled in v1

## Install

1. Put the `objective_race` folder in your world's `datapacks/` folder.
2. Join the world and run `/reload`.
3. Run `/function objective_race:setup`.
4. Either stand in your lobby area and run `/function objective_race:lobby/set`, or stand at the desired center and run `/function objective_race:lobby/build`.

## Quick Start

Run these in order:

```mcfunction
/reload
/function objective_race:setup
/function objective_race:lobby/build
/function objective_race:settings/show
/function objective_race:game/start
```

For objective list mode:

```mcfunction
/function objective_race:settings/mode_list
/function objective_race:game/start
```

For solo testing:

```mcfunction
/function objective_race:settings/allow_solo_on
/function objective_race:game/start
```

To re-show the active list during a list round:

```mcfunction
/function objective_race:ui/show_list
```

## Public Functions

Core:

- `objective_race:setup`
- `objective_race:lobby/set`
- `objective_race:lobby/build`
- `objective_race:game/start`
- `objective_race:game/stop`
- `objective_race:game/reset`

Settings:

- `objective_race:settings/show`
- `objective_race:settings/mode_shared`
- `objective_race:settings/mode_list`
- `objective_race:settings/target_3`
- `objective_race:settings/target_5`
- `objective_race:settings/target_7`
- `objective_race:settings/target_10`
- `objective_race:settings/difficulty_easy`
- `objective_race:settings/difficulty_balanced`
- `objective_race:settings/difficulty_hardcore`
- `objective_race:settings/difficulty_chaos`
- `objective_race:settings/keep_inventory_on`
- `objective_race:settings/keep_inventory_off`
- `objective_race:settings/allow_solo_on`
- `objective_race:settings/allow_solo_off`
- `objective_race:settings/time_300`
- `objective_race:settings/time_600`
- `objective_race:settings/time_900`
- `objective_race:settings/time_1200`
- `objective_race:settings/time_unlimited`

Useful extra:

- `objective_race:ui/show_list`

Debug:

- `objective_race:debug/status`
- `objective_race:debug/force_next_objective`
- `objective_race:debug/complete_current`
- `objective_race:debug/end_game`

## Implemented Objective Pool

The v1 pool includes 57 objectives across easy, medium, and hard bands. Highlights:

- Early gathering and crafting: logs, cobblestone, coal, copper, iron, basic tools, shield, bucket, furnace
- Location goals: water touch, Y 100+, Y 0-, Y -20-, Y -50-, Nether entry
- Combat/mob goals: zombie, skeleton, spider, hostile mob totals
- Progression goals: iron gear, bow use, redstone, lapis, diamond, emerald, arrows
- Harder loot goals: quartz, glowstone dust, magma cream, blaze drops, obsidian, potion

Practical v1 simplifications:

- `Eat any cooked food` was simplified to `Obtain any cooked food`.
- `Golden apple if feasible` was simplified to `Hold an apple and a gold ingot`.
- Some armor/potion goals use possession checks instead of craft/brew-only checks.

## How It Works

- `shared_evolving`: one global objective is active; first completion scores a point and rolls a new objective.
- `objective_list`: the datapack generates `(target * 2) - 1` unique objectives; each can only be claimed once globally.
- If the timer expires, the datapack resolves by score, then most recent score, then shared sudden death if still tied.

## Adding New Objectives

Each objective currently has three places to touch:

1. Add a new check file in [data/objective_race/function/objectives/check](data/objective_race/function/objectives/check).
2. Add its text to:
   - [data/objective_race/function/ui/show_current_objective.mcfunction](data/objective_race/function/ui/show_current_objective.mcfunction)
   - [data/objective_race/function/ui/announce_completion.mcfunction](data/objective_race/function/ui/announce_completion.mcfunction)
   - [data/objective_race/function/ui/show_list.mcfunction](data/objective_race/function/ui/show_list.mcfunction)
3. Wire the new ID into:
   - [data/objective_race/function/objectives/shared/check_player.mcfunction](data/objective_race/function/objectives/shared/check_player.mcfunction)
   - [data/objective_race/function/objectives/list/check_player.mcfunction](data/objective_race/function/objectives/list/check_player.mcfunction)
   - the difficulty ranges in [data/objective_race/function/objectives/select_weighted.mcfunction](data/objective_race/function/objectives/select_weighted.mcfunction)

If the objective needs stat baselines, also update:

- [data/objective_race/function/objectives/init_round.mcfunction](data/objective_race/function/objectives/init_round.mcfunction)
- [data/objective_race/function/objectives/shared/init_current.mcfunction](data/objective_race/function/objectives/shared/init_current.mcfunction)
- [data/objective_race/function/load.mcfunction](data/objective_race/function/load.mcfunction)

## Known Limitations

- Spawn spread still uses the default `80` to `250` block values directly in `game/start`, but each round now picks a random arena center several million blocks away in the overworld first, which makes accidental reuse of the same terrain extremely unlikely.
- If only one active player remains online, the round continues instead of pausing.
- Solo play is enabled only when you explicitly turn on `objective_race:settings/allow_solo_on`; it is meant for testing, not normal competition.
- Objective list mode does not refill after claims; if the list runs dry, the datapack resolves the round immediately on points and sudden death if needed.
- High-complexity objectives from the prompt are still TODO: lava survival, villager trading, PvP damage-specific tasks, brewing, enchanted-item detection, return-from-dimension, ancient debris, and several luck-heavy rares.
- Some possession-based objectives can be completed by already holding the item when the goal appears. That is intentional for v1 to keep the pack stable and fast.

## Test Plan

- Test with exactly 2 players.
- Test with 3+ players.
- Test `shared_evolving`.
- Test `objective_list`.
- Test target count `3`.
- Test target count `5`.
- Test keep inventory on.
- Test keep inventory off.
- Test solo mode on.
- Test solo mode off.
- Test time settings 300 and 600.
- Test unlimited time.
- Test death during a round.
- Test disconnect/reconnect during a round.
- Test `/function objective_race:game/reset` mid-round.
- Test `/reload` during countdown.
- Test `/reload` during a live round.
- Test time expiry and sudden death.
