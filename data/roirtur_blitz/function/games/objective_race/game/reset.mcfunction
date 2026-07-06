function roirtur_blitz:games/objective_race/game/cleanup
scoreboard players set #timer orace_timer 0
scoreboard players set #subtick orace_timer 0
scoreboard players set #countdown orace_timer 0
scoreboard players set #best_score orace_best 0
scoreboard players set #best_time orace_best 0
scoreboard players set #tie_count orace_best 0
scoreboard players reset @a orace_score
scoreboard players reset @a orace_last
scoreboard players reset @a orace_done
scoreboard players reset @a orace_near
scoreboard players reset @a orace_safe
scoreboard players reset @a orace_food
scoreboard players reset @a orace_tmp
scoreboard players reset @a orldmg
scoreboard players reset @a orace_spawn
tellraw @s [{"text":"Objective Race state reset.","color":"green"}]

