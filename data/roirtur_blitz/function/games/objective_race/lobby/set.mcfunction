execute if entity @e[type=marker,tag=orace.lobby,limit=1] at @e[type=marker,tag=orace.lobby,limit=1] run forceload remove ~-20 ~-20 ~20 ~20
kill @e[type=marker,tag=orace.lobby]
summon marker ~ ~ ~ {Tags:["orace.lobby"]}
execute at @e[type=marker,tag=orace.lobby,limit=1] run forceload add ~-20 ~-20 ~20 ~20
tellraw @a [{"text":"Lobby location saved for Objective Race.","color":"green"}]

