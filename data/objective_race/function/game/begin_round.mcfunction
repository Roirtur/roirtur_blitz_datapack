scoreboard players set #state orace_state 2
scoreboard players set #timer orace_timer 0
scoreboard players set #subtick orace_timer 0
function objective_race:game/unfreeze_players
execute as @a[tag=orace.active] run function objective_race:objectives/init_round
function objective_race:players/assign_round_colors
tellraw @a [{"text":"Round live. PvP is enabled, but objectives score the points.","color":"green"}]
execute if score #mode orace_mode matches 0 run function objective_race:objectives/shared/next
execute if score #mode orace_mode matches 1 run function objective_race:objectives/list/generate
function objective_race:ui/update_round_bar
