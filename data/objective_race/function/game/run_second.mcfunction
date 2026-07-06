scoreboard players add #timer orace_timer 1
execute as @a[tag=orace.active] run function objective_race:objectives/update_trackers
execute if score #sudden_death orace_flag matches 0 if score #mode orace_mode matches 0 run function objective_race:objectives/shared/check_players
execute if score #sudden_death orace_flag matches 1 if score #mode orace_mode matches 0 run function objective_race:objectives/shared/check_players
execute if score #sudden_death orace_flag matches 0 if score #round_time orace_round matches 1.. if score #timer orace_timer >= #round_time orace_round run function objective_race:game/time_up
execute if score #state orace_state matches 2 run function objective_race:ui/update_round_bar
execute if score #state orace_state matches 2 as @a[tag=orace.active] run function objective_race:ui/actionbar
