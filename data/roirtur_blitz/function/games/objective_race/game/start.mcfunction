# Objective Race - Start Round

execute unless score #state orace_state matches 0 run tellraw @s [{"text":"Objective Race is already busy. Use /function roirtur_blitz:games/objective_race/game/reset if the round is stuck.","color":"red"}]
execute unless score #state orace_state matches 0 run return 0

# Count non-spectator players.
scoreboard players set #active_count orace_tmp 0
execute as @a[gamemode=!spectator] run scoreboard players add #active_count orace_tmp 1

# Player-count checks.
execute if score #allow_solo orace_flag matches 0 if score #active_count orace_tmp matches ..1 run tellraw @s [{"text":"Need at least 2 non-spectator players to start.","color":"red"}]
execute if score #allow_solo orace_flag matches 0 if score #active_count orace_tmp matches ..1 run return 0

execute if score #allow_solo orace_flag matches 1 if score #active_count orace_tmp matches ..0 run tellraw @s [{"text":"Need at least 1 non-spectator player to start.","color":"red"}]
execute if score #allow_solo orace_flag matches 1 if score #active_count orace_tmp matches ..0 run return 0

# Core round state.
scoreboard players set #state orace_state 1
scoreboard players set #timer orace_timer 0
scoreboard players set #subtick orace_timer 0
scoreboard players set #countdown orace_timer 5
scoreboard players set #sudden_death orace_flag 0
scoreboard players set #claim_lock orace_claim 0
scoreboard players set #current orace_cur 0
scoreboard players set #last_objective orace_cur 0
scoreboard players set #last_objective_2 orace_cur 0

# Reset player tags.
tag @a remove orace.active
tag @a remove orace.finished
tag @a remove orace.spectator

# Reset player scores.
scoreboard players reset @a orace_score
scoreboard players reset @a orace_last
scoreboard players reset @a orace_done
scoreboard players reset @a orace_near
scoreboard players reset @a orace_safe
scoreboard players reset @a orace_food
scoreboard players reset @a orace_act
scoreboard players reset @a orace_spawn

# Clear inventories before round setup.
clear @a

# Mark active players.
execute as @a[gamemode=!spectator] run function roirtur_blitz:games/objective_race/players/mark_active

# Apply keep-inventory round setting.
execute if score #keepinv_setting orace_keep matches 1 run function roirtur_blitz:games/objective_race/game/apply_keepinv_on
execute if score #keepinv_setting orace_keep matches 0 run function roirtur_blitz:games/objective_race/game/apply_keepinv_off

# Reset objective list state.
scoreboard players set obj01 orace_list 0
function roirtur_blitz:games/objective_race/util/reset_objective_flags

# Teleport all active players to one preset far-away point.
function roirtur_blitz:games/objective_race/game/pick_arena_center
effect give @a[tag=orace.active] minecraft:resistance 20 255 true
scoreboard players set @a[tag=orace.active] orace_spawn 6

# Freeze players for countdown.
function roirtur_blitz:games/objective_race/game/freeze_players

# UI setup.
scoreboard objectives setdisplay sidebar orace_score
bossbar set roirtur_blitz:orace_timer max 5
bossbar set roirtur_blitz:orace_timer players @a[tag=orace.active]
bossbar set roirtur_blitz:orace_timer visible true
function roirtur_blitz:games/objective_race/ui/update_round_bar

# Start messages.
title @a[tag=orace.active] title {"text":"Objective Race","color":"gold"}
title @a[tag=orace.active] subtitle {"text":"Round starting in 5","color":"yellow"}

tellraw @a [{"text":"Objective Race round starting. First to ","color":"gold"},{"score":{"name":"#target","objective":"orace_target"},"color":"aqua"},{"text":" objectives wins.","color":"gold"}]

execute if score #round_time orace_round matches 0 run tellraw @a [{"text":"Time limit: none","color":"green"}]
execute if score #round_time orace_round matches 1.. run tellraw @a [{"text":"Time limit: ","color":"gold"},{"score":{"name":"#round_time","objective":"orace_round"},"color":"aqua"},{"text":" seconds","color":"gold"}]

