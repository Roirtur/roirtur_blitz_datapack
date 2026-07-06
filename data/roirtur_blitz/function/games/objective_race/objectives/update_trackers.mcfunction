execute if entity @a[tag=orace.active,distance=0.01..25] run scoreboard players add @s orace_near 1
execute unless entity @a[tag=orace.active,distance=0.01..25] run scoreboard players set @s orace_near 0
execute if score @s ordmg = @s orldmg run scoreboard players add @s orace_safe 1
execute unless score @s ordmg = @s orldmg run scoreboard players set @s orace_safe 0
scoreboard players operation @s orldmg = @s ordmg

