execute store result score @s orace_food run clear @s minecraft:apple 0
execute store result score @s orace_tmp run clear @s minecraft:gold_ingot 0
execute if score @s orace_food matches 1.. if score @s orace_tmp matches 1.. run scoreboard players set @s orace_done 1

