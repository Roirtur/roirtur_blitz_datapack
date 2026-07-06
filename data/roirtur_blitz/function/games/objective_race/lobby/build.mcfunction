# Objective Race - Minimal Clean Cube Lobby
# Stand at the lobby center, then run:
# /function roirtur_blitz:games/objective_race/lobby/build
#
# Closed cube.
# No signs.
# UI uses text_display + invisible interaction hitboxes.
# North UI wall is negative Z.

# Clean old lobby UI.
kill @e[tag=orace.lobby_text,distance=..50]
kill @e[tag=orace.lobby_click,distance=..50]

# Clear area.
fill ~-9 ~-1 ~-9 ~9 ~7 ~9 minecraft:air

# Scoreboard for menu state.
scoreboard objectives add or_lobby dummy

# Defaults:
# target 5, time 10, mode shared, difficulty balanced, keep inventory on.
scoreboard players set #target or_lobby 1
scoreboard players set #time or_lobby 1
scoreboard players set #mode or_lobby 0
scoreboard players set #difficulty or_lobby 1
scoreboard players set #keepinv or_lobby 0

# Apply defaults.
function roirtur_blitz:games/objective_race/settings/target_5
function roirtur_blitz:games/objective_race/settings/time_600
function roirtur_blitz:games/objective_race/settings/mode_shared
function roirtur_blitz:games/objective_race/settings/difficulty_balanced
function roirtur_blitz:games/objective_race/settings/keep_inventory_on

# =========================
# CLEAN CLOSED CUBE
# =========================

# Floor.
fill ~-7 ~-1 ~-7 ~7 ~-1 ~7 minecraft:smooth_quartz
fill ~-6 ~-1 ~-6 ~6 ~-1 ~6 minecraft:quartz_bricks

# Subtle center path.
fill ~-1 ~-1 ~-6 ~1 ~-1 ~6 minecraft:calcite
fill ~-6 ~-1 ~-1 ~6 ~-1 ~1 minecraft:calcite
setblock ~ ~-1 ~ minecraft:sea_lantern

# Back UI wall.
fill ~-7 ~0 ~-7 ~7 ~5 ~-7 minecraft:white_concrete

# Side walls.
fill ~-7 ~0 ~-6 ~-7 ~5 ~7 minecraft:white_stained_glass
fill ~7 ~0 ~-6 ~7 ~5 ~7 minecraft:white_stained_glass

# Front wall, fully closed.
fill ~-7 ~0 ~7 ~7 ~5 ~7 minecraft:white_stained_glass

# Cube frame.
fill ~-7 ~0 ~-7 ~-7 ~5 ~-7 minecraft:smooth_quartz
fill ~7 ~0 ~-7 ~7 ~5 ~-7 minecraft:smooth_quartz
fill ~-7 ~0 ~7 ~-7 ~5 ~7 minecraft:smooth_quartz
fill ~7 ~0 ~7 ~7 ~5 ~7 minecraft:smooth_quartz

# Roof.
fill ~-7 ~5 ~-7 ~7 ~5 ~7 minecraft:smooth_quartz
fill ~-5 ~5 ~-5 ~5 ~5 ~5 minecraft:white_stained_glass

# Soft lights.
setblock ~ ~5 ~ minecraft:sea_lantern
setblock ~-4 ~5 ~-4 minecraft:sea_lantern
setblock ~4 ~5 ~-4 minecraft:sea_lantern
setblock ~-4 ~5 ~4 minecraft:sea_lantern
setblock ~4 ~5 ~4 minecraft:sea_lantern

# =========================
# MINIMAL UI BACKBOARD
# =========================
# Back wall is at Z -7.
# Backboard is at Z -6.
# Text and hitboxes are at Z -4.
# This places the UI clearly forward from the wall.

fill ~-6 ~0 ~-6 ~6 ~3 ~-6 minecraft:calcite

# Clean frame.
fill ~-6 ~0 ~-6 ~6 ~0 ~-6 minecraft:smooth_quartz
fill ~-6 ~3 ~-6 ~6 ~3 ~-6 minecraft:smooth_quartz
fill ~-6 ~0 ~-6 ~-6 ~3 ~-6 minecraft:smooth_quartz
fill ~6 ~0 ~-6 ~6 ~3 ~-6 minecraft:smooth_quartz

# Column separators.
fill ~-2 ~0 ~-6 ~-2 ~3 ~-6 minecraft:smooth_quartz
fill ~2 ~0 ~-6 ~2 ~3 ~-6 minecraft:smooth_quartz

# =========================
# TITLE
# =========================
# Title max height is below 4.

summon minecraft:text_display ~0 ~3.55 ~-4 {Tags:["orace.lobby_text"],billboard:"center",alignment:"center",shadow:0b,see_through:0b,brightness:{sky:15,block:15},text:{text:'OBJECTIVE RACE',color:'gold',bold:true},transformation:{scale:[1.0f,1.0f,1.0f]}}
summon minecraft:text_display ~0 ~3.18 ~-4 {Tags:["orace.lobby_text"],billboard:"center",alignment:"center",shadow:0b,see_through:0b,brightness:{sky:15,block:15},text:{text:'Click a panel to cycle settings',color:'gray'},transformation:{scale:[0.55f,0.55f,0.55f]}}

# =========================
# CENTERED CLICKABLE UI
# =========================
# Text and hitboxes share the exact same XYZ positions.
# Columns are exactly centered: -4, 0, 4.
# Highest clickable panel is at Y 2.25.

# Left column: round setup.
summon minecraft:text_display ~-4 ~2.25 ~-4 {Tags:["orace.lobby_text","orace.display_target"],billboard:"center",alignment:"center",shadow:0b,see_through:0b,brightness:{sky:15,block:15},text:{text:'TARGET COUNT\n5 POINTS',color:'yellow',bold:true},transformation:{scale:[0.68f,0.68f,0.68f]}}
summon minecraft:text_display ~-4 ~1.45 ~-4 {Tags:["orace.lobby_text","orace.display_time"],billboard:"center",alignment:"center",shadow:0b,see_through:0b,brightness:{sky:15,block:15},text:{text:'TIME LIMIT\n10 MIN',color:'aqua',bold:true},transformation:{scale:[0.68f,0.68f,0.68f]}}

# Center column: launch.
summon minecraft:text_display ~0 ~2.25 ~-4 {Tags:["orace.lobby_text","orace.display_start"],billboard:"center",alignment:"center",shadow:0b,see_through:0b,brightness:{sky:15,block:15},text:{text:'START\nROUND',color:'green',bold:true},transformation:{scale:[0.85f,0.85f,0.85f]}}
summon minecraft:text_display ~0 ~1.45 ~-4 {Tags:["orace.lobby_text","orace.display_show"],billboard:"center",alignment:"center",shadow:0b,see_through:0b,brightness:{sky:15,block:15},text:{text:'SHOW\nSETTINGS',color:'light_purple',bold:true},transformation:{scale:[0.65f,0.65f,0.65f]}}
summon minecraft:text_display ~0 ~0.75 ~-4 {Tags:["orace.lobby_text","orace.display_main_lobby"],billboard:"center",alignment:"center",shadow:0b,see_through:0b,brightness:{sky:15,block:15},text:{text:'RETURN TO\nBLITZ HUB',color:'aqua',bold:true},transformation:{scale:[0.62f,0.62f,0.62f]}}

# Right column: rules.
summon minecraft:text_display ~4 ~2.25 ~-4 {Tags:["orace.lobby_text","orace.display_mode"],billboard:"center",alignment:"center",shadow:0b,see_through:0b,brightness:{sky:15,block:15},text:{text:'MODE\nSHARED',color:'gold',bold:true},transformation:{scale:[0.75f,0.75f,0.75f]}}
summon minecraft:text_display ~4 ~1.45 ~-4 {Tags:["orace.lobby_text","orace.display_difficulty"],billboard:"center",alignment:"center",shadow:0b,see_through:0b,brightness:{sky:15,block:15},text:{text:'DIFFICULTY\nBALANCED',color:'yellow',bold:true},transformation:{scale:[0.6f,0.6f,0.6f]}}
summon minecraft:text_display ~4 ~0.75 ~-4 {Tags:["orace.lobby_text","orace.display_keepinv"],billboard:"center",alignment:"center",shadow:0b,see_through:0b,brightness:{sky:15,block:15},text:{text:'KEEP INV\nON',color:'green',bold:true},transformation:{scale:[0.7f,0.7f,0.7f]}}

# =========================
# INVISIBLE CLICK HITBOXES
# =========================
# Exact same coordinates as their matching text_display.

summon minecraft:interaction ~-4 ~2.25 ~-4 {Tags:["orace.lobby_click","orace.click_target"],width:1.f,height:0.5f,response:1b}
summon minecraft:interaction ~-4 ~1.45 ~-4 {Tags:["orace.lobby_click","orace.click_time"],width:1.f,height:0.5f,response:1b}

summon minecraft:interaction ~0 ~2.25 ~-4 {Tags:["orace.lobby_click","orace.click_start"],width:1.f,height:0.5f,response:1b}
summon minecraft:interaction ~0 ~1.45 ~-4 {Tags:["orace.lobby_click","orace.click_show"],width:1.f,height:0.5f,response:1b}
summon minecraft:interaction ~0 ~0.75 ~-4 {Tags:["orace.lobby_click","orace.click_main_lobby"],width:1.f,height:0.5f,response:1b}

summon minecraft:interaction ~4 ~2.25 ~-4 {Tags:["orace.lobby_click","orace.click_mode"],width:1.f,height:0.5f,response:1b}
summon minecraft:interaction ~4 ~1.45 ~-4 {Tags:["orace.lobby_click","orace.click_difficulty"],width:1.f,height:0.5f,response:1b}
summon minecraft:interaction ~4 ~0.75 ~-4 {Tags:["orace.lobby_click","orace.click_keepinv"],width:1.f,height:0.5f,response:1b}

# Save lobby return point.
function roirtur_blitz:games/objective_race/lobby/set

tellraw @s {text:'Objective Race lobby rebuilt inside Roirtur Blitz.',color:'green'}

