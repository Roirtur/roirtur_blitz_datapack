execute if score #state orace_state matches 1 run bossbar set objective_race:round value 5
execute if score #state orace_state matches 1 run bossbar set objective_race:round name [{"text":"Starting in ","color":"yellow"},{"score":{"name":"#countdown","objective":"orace_timer"},"color":"gold"}]
execute if score #state orace_state matches 2 if score #round_time orace_round matches 0 run scoreboard players set #time_left orace_tmp 0
execute if score #state orace_state matches 2 if score #round_time orace_round matches 1.. run scoreboard players operation #time_left orace_tmp = #round_time orace_round
execute if score #state orace_state matches 2 if score #round_time orace_round matches 1.. run scoreboard players operation #time_left orace_tmp -= #timer orace_timer
execute if score #state orace_state matches 2 if score #time_left orace_tmp matches ..0 run scoreboard players set #time_left orace_tmp 0
execute if score #state orace_state matches 2 if score #round_time orace_round matches 1.. run execute store result bossbar objective_race:round max run scoreboard players get #round_time orace_round
execute if score #state orace_state matches 2 if score #round_time orace_round matches 1.. run execute store result bossbar objective_race:round value run scoreboard players get #time_left orace_tmp
execute if score #state orace_state matches 2 if score #round_time orace_round matches 0 run bossbar set objective_race:round max 1
execute if score #state orace_state matches 2 if score #round_time orace_round matches 0 run bossbar set objective_race:round value 1
execute if score #state orace_state matches 2 run bossbar set objective_race:round players @a[tag=orace.active]
execute if score #state orace_state matches 2 if score #mode orace_mode matches 1 if score #sudden_death orace_flag matches 0 run bossbar set objective_race:round name {"text":"Objective List Mode","color":"yellow"}
