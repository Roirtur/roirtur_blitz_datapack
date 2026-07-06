# Roirtur Blitz

Roirtur Blitz is a modular Minecraft Java datapack built as a hub for multiple minigames.

Current implemented game:
- Objective Race

Planned future games:
- Relic Chaos
- Stock Market
- Shared Treasure Hunt
- PvP Shop Duel
- Hidden Block Hunt

## Install

1. Put this datapack in your world's `datapacks` folder.
2. Join the world.
3. Run:

```mcfunction
/reload
/function roirtur_blitz:setup
/function roirtur_blitz:lobby/build
```

## Quick Start

Build and initialize everything:

```mcfunction
/reload
/function roirtur_blitz:setup
/function roirtur_blitz:lobby/build
```

Go to the main Blitz lobby:

```mcfunction
/function roirtur_blitz:lobby/tp
```

Go directly to the Objective Race lobby:

```mcfunction
/function roirtur_blitz:games/objective_race/lobby/tp
```

Start Objective Race:

```mcfunction
/function roirtur_blitz:games/objective_race/game/start
```

## Public Commands

Global commands:
- `roirtur_blitz:setup` initializes the Blitz datapack and Objective Race module defaults.
- `roirtur_blitz:lobby/build` builds the main Blitz lobby and every currently available sub-lobby.
- `roirtur_blitz:lobby/set` saves the current position as the main Blitz lobby return point.
- `roirtur_blitz:lobby/tp` teleports you to the main Blitz lobby.
- `roirtur_blitz:reset` resets all currently installed game modules.

Objective Race commands:
- `roirtur_blitz:games/objective_race/setup` initializes Objective Race on its own.
- `roirtur_blitz:games/objective_race/lobby/build` builds the Objective Race sub-lobby.
- `roirtur_blitz:games/objective_race/lobby/set` saves the Objective Race lobby position.
- `roirtur_blitz:games/objective_race/lobby/tp` teleports you to the Objective Race lobby.
- `roirtur_blitz:games/objective_race/settings/show` shows the current Objective Race settings.
- `roirtur_blitz:games/objective_race/game/start` starts an Objective Race round.
- `roirtur_blitz:games/objective_race/game/stop` force-stops the current Objective Race round.
- `roirtur_blitz:games/objective_race/game/reset` fully resets Objective Race state.

Objective Race settings:
- `roirtur_blitz:games/objective_race/settings/mode_shared`
- `roirtur_blitz:games/objective_race/settings/mode_list`
- `roirtur_blitz:games/objective_race/settings/target_3`
- `roirtur_blitz:games/objective_race/settings/target_5`
- `roirtur_blitz:games/objective_race/settings/target_7`
- `roirtur_blitz:games/objective_race/settings/target_10`
- `roirtur_blitz:games/objective_race/settings/difficulty_easy`
- `roirtur_blitz:games/objective_race/settings/difficulty_balanced`
- `roirtur_blitz:games/objective_race/settings/difficulty_hardcore`
- `roirtur_blitz:games/objective_race/settings/difficulty_chaos`
- `roirtur_blitz:games/objective_race/settings/keep_inventory_on`
- `roirtur_blitz:games/objective_race/settings/keep_inventory_off`
- `roirtur_blitz:games/objective_race/settings/allow_solo_on`
- `roirtur_blitz:games/objective_race/settings/allow_solo_off`
- `roirtur_blitz:games/objective_race/settings/time_300`
- `roirtur_blitz:games/objective_race/settings/time_600`
- `roirtur_blitz:games/objective_race/settings/time_900`
- `roirtur_blitz:games/objective_race/settings/time_1200`
- `roirtur_blitz:games/objective_race/settings/time_unlimited`

Objective Race utility commands:
- `roirtur_blitz:games/objective_race/ui/show_list`

Objective Race debug commands:
- `roirtur_blitz:games/objective_race/debug/status`
- `roirtur_blitz:games/objective_race/debug/force_next_objective`
- `roirtur_blitz:games/objective_race/debug/complete_current`
- `roirtur_blitz:games/objective_race/debug/end_game`

## Lobby Layout

`/function roirtur_blitz:lobby/build` builds:
- the main Roirtur Blitz lobby
- the Objective Race sub-lobby

The main lobby is the parent hub.

From there you can:
- click the Objective Race panel
- or run `/function roirtur_blitz:games/objective_race/lobby/tp`

Inside the Objective Race sub-lobby, there is a `BLITZ MAIN LOBBY` panel that returns players to the main hub.

## Objective Race

Objective Race keeps its current gameplay behavior:
- shared evolving objective mode
- objective list mode
- configurable target count
- configurable difficulty
- configurable round time
- keep inventory toggle
- solo testing toggle
- sudden death on timer tie
- full Objective Race lobby and debug flow

Objective list mode now also ends immediately if every listed objective has been claimed. The player with the highest score wins, and ties produce multiple winners.

## Architecture

Roirtur Blitz now uses a modular layout:

```text
data/
  minecraft/
    tags/
      function/
        load.json
        tick.json

  roirtur_blitz/
    function/
      load.mcfunction
      tick.mcfunction
      setup.mcfunction
      reset.mcfunction
      lobby/
      games/
        objective_race/
    predicate/
      games/
        objective_race/
```

Global responsibilities:
- datapack load and tick entry points
- main Blitz lobby
- global setup and reset dispatch
- future game registry shell

Objective Race module responsibilities:
- all round logic
- all settings
- all UI
- all objectives
- all lobbies and sub-lobby interactions
- all Objective Race predicates and internal utilities

## Adding Future Games

Future games should follow the same module layout as Objective Race:

```text
data/roirtur_blitz/function/games/<game_name>/
data/roirtur_blitz/predicate/games/<game_name>/
```

To add a new game later:
1. Create a new module folder under `games/`.
2. Give it isolated scoreboards, tags, bossbars, markers, and settings.
3. Add its lobby builder to `roirtur_blitz:lobby/build`.
4. Add conditional tick dispatch in `roirtur_blitz:tick`.
5. Keep all game-specific logic inside that module.

## Known Limitations

- Full multi-round Blitz mode is not implemented yet.
- Only Objective Race is currently playable.
- The pack folder on disk may still be named `objective_race`, but the datapack namespace and runtime architecture are now `roirtur_blitz`.
- Global reset currently dispatches to the installed game modules and is still centered on Objective Race because it is the only live module.

## Test Plan

Load tests:

```mcfunction
/reload
/function roirtur_blitz:setup
```

Lobby tests:

```mcfunction
/function roirtur_blitz:lobby/build
/function roirtur_blitz:lobby/tp
/function roirtur_blitz:games/objective_race/lobby/tp
```

Objective Race tests:

```mcfunction
/function roirtur_blitz:games/objective_race/settings/show
/function roirtur_blitz:games/objective_race/game/start
/function roirtur_blitz:games/objective_race/settings/mode_shared
/function roirtur_blitz:games/objective_race/game/start
/function roirtur_blitz:games/objective_race/settings/mode_list
/function roirtur_blitz:games/objective_race/game/start
```

Reset tests:

```mcfunction
/function roirtur_blitz:games/objective_race/game/reset
/function roirtur_blitz:reset
```

Behavior checks:
- test shared objective mode
- test objective list mode
- test target counts 3 and 5
- test keep inventory on and off
- test solo mode
- test player death and respawn
- test `/reload` during development
- test list exhaustion resolution
- test return from Objective Race lobby to the main Blitz lobby
