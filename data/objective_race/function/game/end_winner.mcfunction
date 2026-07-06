execute unless entity @a[tag=orace.winner] as @a[tag=orace.active] if score @s orace_score >= #target orace_target run tag @s add orace.winner
execute as @a[tag=orace.winner,limit=1] run tellraw @a [{"selector":"@s","color":"gold"},{"text":" wins Objective Race with ","color":"yellow"},{"score":{"name":"@s","objective":"orace_score"},"color":"aqua"},{"text":" points.","color":"yellow"}]
execute if entity @a[tag=orace.winner] run title @a title {"text":"Winner!","color":"gold"}
execute as @a[tag=orace.winner,limit=1] run title @a subtitle [{"selector":"@s","color":"gold"},{"text":" takes the round","color":"yellow"}]
function objective_race:ui/show_scores
function objective_race:game/cleanup
