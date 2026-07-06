execute if score @s orace_spawn matches 2.. run scoreboard players remove @s orace_spawn 1
execute if score @s orace_spawn matches 1 if entity @s[nbt={OnGround:1b}] run execute as @s at @s run spawnpoint @s ~ ~ ~
execute if score @s orace_spawn matches 1 if entity @s[nbt={OnGround:1b}] run scoreboard players reset @s orace_spawn

