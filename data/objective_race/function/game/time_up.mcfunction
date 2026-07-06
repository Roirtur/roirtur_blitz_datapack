scoreboard players set #best_score orace_best -1
scoreboard players set #best_time orace_best -1
scoreboard players set #tie_count orace_best 0
execute as @a[tag=orace.active] run function objective_race:game/evaluate_candidate
execute if score #tie_count orace_best matches 1 run tag @a remove orace.winner
execute if score #tie_count orace_best matches 1 as @a[tag=orace.active] if score @s orace_score = #best_score orace_best if score @s orace_last = #best_time orace_best run tag @s add orace.winner
execute if score #tie_count orace_best matches 1 run function objective_race:game/end_winner
execute if score #tie_count orace_best matches 2.. run scoreboard players set #sudden_death orace_flag 1
execute if score #tie_count orace_best matches 2.. run tellraw @a [{"text":"Time expired and the round is tied. Sudden death: next objective completion wins.","color":"red"}]
execute if score #tie_count orace_best matches 2.. run function objective_race:objectives/shared/next
