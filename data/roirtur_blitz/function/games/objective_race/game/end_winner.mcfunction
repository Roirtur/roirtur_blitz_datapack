execute unless entity @a[tag=orace.winner] as @a[tag=orace.active] if score @s orace_score >= #target orace_target run tag @s add orace.winner
scoreboard players set #winner_count orace_tmp 0
execute as @a[tag=orace.winner] run scoreboard players add #winner_count orace_tmp 1
execute if score #winner_count orace_tmp matches 1 as @a[tag=orace.winner,limit=1] run tellraw @a [{"selector":"@s","color":"gold"},{"text":" wins Objective Race with ","color":"yellow"},{"score":{"name":"@s","objective":"orace_score"},"color":"aqua"},{"text":" points.","color":"yellow"}]
execute if score #winner_count orace_tmp matches 2.. run tellraw @a [{"text":"Objective Race ends in a tie between ","color":"yellow"},{"selector":"@a[tag=orace.winner]","color":"gold"},{"text":" with ","color":"yellow"},{"score":{"name":"#best_score","objective":"orace_best"},"color":"aqua"},{"text":" points.","color":"yellow"}]
execute if score #winner_count orace_tmp matches 1 run title @a title {"text":"Winner!","color":"gold"}
execute if score #winner_count orace_tmp matches 1 as @a[tag=orace.winner,limit=1] run title @a subtitle [{"selector":"@s","color":"gold"},{"text":" takes the round","color":"yellow"}]
execute if score #winner_count orace_tmp matches 2.. run title @a title {"text":"Tie!","color":"gold"}
execute if score #winner_count orace_tmp matches 2.. run title @a subtitle {"text":"Multiple winners","color":"yellow"}
function roirtur_blitz:games/objective_race/ui/show_scores
function roirtur_blitz:games/objective_race/game/cleanup

