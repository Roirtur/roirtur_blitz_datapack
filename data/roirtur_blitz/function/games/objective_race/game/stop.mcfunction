execute if score #state orace_state matches 0 run tellraw @s [{"text":"No Objective Race round is currently running.","color":"yellow"}]
execute if score #state orace_state matches 0 run return 0
tellraw @a [{"text":"Objective Race stopped.","color":"red"}]
function roirtur_blitz:games/objective_race/game/cleanup

