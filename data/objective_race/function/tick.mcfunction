execute if score #state orace_state matches 1..2 run function objective_race:game/update_spawn_protection
execute if score #state orace_state matches 2 if score #sudden_death orace_flag matches 0 if score #mode orace_mode matches 1 run function objective_race:objectives/list/check_players
execute if score #state orace_state matches 2 if score #sudden_death orace_flag matches 1 if score #mode orace_mode matches 1 run function objective_race:objectives/shared/check_players
execute if score #state orace_state matches 1..2 run scoreboard players add #subtick orace_timer 1
execute if score #state orace_state matches 1..2 if score #subtick orace_timer matches 20.. run function objective_race:game/second
execute unless score #state orace_state matches 1..2 run scoreboard players set #subtick orace_timer 0
