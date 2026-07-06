execute if entity @e[type=marker,tag=blitz.main_lobby,limit=1] at @e[type=marker,tag=blitz.main_lobby,limit=1] run forceload remove ~-20 ~-20 ~20 ~20
kill @e[type=marker,tag=blitz.main_lobby]
summon marker ~ ~ ~ {Tags:["blitz.main_lobby"]}
execute at @e[type=marker,tag=blitz.main_lobby,limit=1] run forceload add ~-20 ~-20 ~20 ~20
tellraw @a [{"text":"Roirtur Blitz main lobby saved.","color":"green"}]

