execute if score #picked orace_tmp matches 1.. run return 0
scoreboard players set #repeat orace_tmp 0
function roirtur_blitz:games/objective_race/objectives/select_weighted
execute if score #candidate orace_cur = #last_objective orace_cur run scoreboard players set #repeat orace_tmp 1
execute if score #candidate orace_cur = #last_objective_2 orace_cur run scoreboard players set #repeat orace_tmp 1
execute if score #repeat orace_tmp matches 1.. run scoreboard players add #reroll orace_tmp 1
execute if score #repeat orace_tmp matches 1.. if score #reroll orace_tmp matches ..10 run function roirtur_blitz:games/objective_race/objectives/shared/pick_unique
execute if score #picked orace_tmp matches 1.. run return 0
scoreboard players operation #last_objective_2 orace_cur = #last_objective orace_cur
scoreboard players operation #last_objective orace_cur = #candidate orace_cur
scoreboard players operation #current orace_cur = #candidate orace_cur
scoreboard players set #picked orace_tmp 1
execute as @a[tag=orace.active] run function roirtur_blitz:games/objective_race/objectives/shared/init_current
function roirtur_blitz:games/objective_race/ui/show_current_objective

