scoreboard players set #state orace_state 0
scoreboard players set #current orace_cur 0
scoreboard players set #sudden_death orace_flag 0
scoreboard players set #claim_lock orace_claim 0
scoreboard players set #countdown orace_timer 0
scoreboard players set #subtick orace_timer 0
function roirtur_blitz:games/objective_race/game/unfreeze_players
scoreboard objectives setdisplay sidebar
bossbar set roirtur_blitz:orace_timer name {"text":"Objective Race","color":"gold"}
bossbar set roirtur_blitz:orace_timer players @a
bossbar set roirtur_blitz:orace_timer visible false
clear @a
execute if entity @e[type=marker,tag=orace.lobby,limit=1] at @e[type=marker,tag=orace.lobby,limit=1] run tp @a ~ ~ ~
execute if entity @e[type=marker,tag=orace.lobby,limit=1] at @e[type=marker,tag=orace.lobby,limit=1] run spawnpoint @a ~ ~ ~
effect clear @a
effect give @a minecraft:instant_health 1 10 true
effect give @a minecraft:saturation 1 10 true
execute as @a run data merge entity @s {Health:20f,Invulnerable:1b,FallDistance:0f,Fire:0s,Air:300s}
gamemode adventure @a
tag @a remove orace.active
tag @a remove orace.finished
tag @a remove orace.winner
scoreboard players set @a orace_act 0
scoreboard players reset @a orace_spawn
function roirtur_blitz:games/objective_race/util/reset_objective_flags

