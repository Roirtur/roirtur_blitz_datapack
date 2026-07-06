execute if score #claim_lock orace_claim matches 1.. run return 0
scoreboard players set #claim_lock orace_claim 1
scoreboard players add @s orace_score 1
scoreboard players operation @s orace_last = #timer orace_timer
function objective_race:ui/announce_completion
execute if score #sudden_death orace_flag matches 1 run tag @s add orace.winner
execute if score #sudden_death orace_flag matches 1 run function objective_race:game/end_winner
execute if score @s orace_score >= #target orace_target run tag @s add orace.winner
execute if entity @s[tag=orace.winner] run function objective_race:game/end_winner
execute unless entity @s[tag=orace.winner] run function objective_race:objectives/shared/next
