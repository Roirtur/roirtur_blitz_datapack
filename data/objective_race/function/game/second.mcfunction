scoreboard players set #subtick orace_timer 0
execute if score #state orace_state matches 1 run function objective_race:game/countdown_second
execute if score #state orace_state matches 2 run function objective_race:game/run_second
