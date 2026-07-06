execute store result score @s orace_tmp run clear @s minecraft:iron_helmet 0
execute if score @s orace_tmp matches 1.. run scoreboard players set @s orace_done 1
execute store result score @s orace_tmp run clear @s minecraft:iron_chestplate 0
execute if score @s orace_tmp matches 1.. run scoreboard players set @s orace_done 1
execute store result score @s orace_tmp run clear @s minecraft:iron_leggings 0
execute if score @s orace_tmp matches 1.. run scoreboard players set @s orace_done 1
execute store result score @s orace_tmp run clear @s minecraft:iron_boots 0
execute if score @s orace_tmp matches 1.. run scoreboard players set @s orace_done 1

