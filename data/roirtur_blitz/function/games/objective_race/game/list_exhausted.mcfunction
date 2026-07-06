scoreboard players set #best_score orace_best -1
tag @a remove orace.winner
execute as @a[tag=orace.active] if score @s orace_score > #best_score orace_best run scoreboard players operation #best_score orace_best = @s orace_score
execute as @a[tag=orace.active] if score @s orace_score = #best_score orace_best run tag @s add orace.winner
function roirtur_blitz:games/objective_race/game/end_winner

