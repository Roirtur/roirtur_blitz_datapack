scoreboard players set #state orace_state 0
scoreboard players set #target orace_target 5
scoreboard players set #mode orace_mode 0
scoreboard players set #difficulty orace_diff 1
scoreboard players set #keepinv_setting orace_keep 1
scoreboard players set #powerups_enabled orace_pow 0
scoreboard players set #allow_solo orace_flag 0
scoreboard players set #round_time orace_round 600
scoreboard players set #arena_radius orace_flag 500
scoreboard players set #spread_min orace_flag 80
scoreboard players set #spread_max orace_flag 250
scoreboard players set #current orace_cur 0
scoreboard players set #last_objective orace_cur 0
scoreboard players set #last_objective_2 orace_cur 0
scoreboard players set #sudden_death orace_flag 0
scoreboard players set #claim_lock orace_claim 0
scoreboard players set #countdown orace_timer 0
scoreboard players set #subtick orace_timer 0
scoreboard players reset @a orace_spawn
execute store result bossbar objective_race:round max run scoreboard players get #round_time orace_round
execute store result bossbar objective_race:round value run scoreboard players get #round_time orace_round
bossbar set objective_race:round name {"text":"Objective Race","color":"gold"}
