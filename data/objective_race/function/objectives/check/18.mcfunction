scoreboard players set @s orace_food 0
execute store result score @s orace_tmp run clear @s minecraft:apple 0
execute if score @s orace_tmp matches 1.. run scoreboard players add @s orace_food 1
execute store result score @s orace_tmp run clear @s minecraft:bread 0
execute if score @s orace_tmp matches 1.. run scoreboard players add @s orace_food 1
execute store result score @s orace_tmp run clear @s minecraft:cooked_beef 0
execute if score @s orace_tmp matches 1.. run scoreboard players add @s orace_food 1
execute store result score @s orace_tmp run clear @s minecraft:cooked_porkchop 0
execute if score @s orace_tmp matches 1.. run scoreboard players add @s orace_food 1
execute store result score @s orace_tmp run clear @s minecraft:cooked_chicken 0
execute if score @s orace_tmp matches 1.. run scoreboard players add @s orace_food 1
execute store result score @s orace_tmp run clear @s minecraft:cooked_mutton 0
execute if score @s orace_tmp matches 1.. run scoreboard players add @s orace_food 1
execute store result score @s orace_tmp run clear @s minecraft:cooked_cod 0
execute if score @s orace_tmp matches 1.. run scoreboard players add @s orace_food 1
execute store result score @s orace_tmp run clear @s minecraft:carrot 0
execute if score @s orace_tmp matches 1.. run scoreboard players add @s orace_food 1
execute store result score @s orace_tmp run clear @s minecraft:melon_slice 0
execute if score @s orace_tmp matches 1.. run scoreboard players add @s orace_food 1
execute if score @s orace_food matches 3.. run scoreboard players set @s orace_done 1
