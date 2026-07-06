execute unless entity @e[type=marker,tag=blitz.main_lobby,limit=1] run tellraw @s [{"text":"Roirtur Blitz main lobby is not set yet. Run /function roirtur_blitz:lobby/build or /function roirtur_blitz:lobby/set first.","color":"red"}]
execute if entity @e[type=marker,tag=blitz.main_lobby,limit=1] at @e[type=marker,tag=blitz.main_lobby,limit=1] run tp @s ~ ~ ~
gamemode adventure @s

