execute if score @s orace_score > #best_score orace_best run function roirtur_blitz:games/objective_race/game/evaluate_new_best
execute if score @s orace_score = #best_score orace_best if score @s orace_last > #best_time orace_best run function roirtur_blitz:games/objective_race/game/evaluate_new_best
execute if score @s orace_score = #best_score orace_best if score @s orace_last = #best_time orace_best run scoreboard players add #tie_count orace_best 1

