execute unless entity @e[type=marker,tag=orace.lobby,limit=1] run tellraw @s [{"text":"Objective Race lobby is not set yet. Run /function roirtur_blitz:games/objective_race/lobby/build or /function roirtur_blitz:games/objective_race/lobby/set first.","color":"red"}]
execute if entity @e[type=marker,tag=orace.lobby,limit=1] at @e[type=marker,tag=orace.lobby,limit=1] run tp @s ~ ~ ~
gamemode adventure @s

