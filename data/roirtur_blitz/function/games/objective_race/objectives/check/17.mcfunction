execute store result score @s orace_tmp run clear @s minecraft:cooked_beef 0
execute if score @s orace_tmp matches 1.. run scoreboard players set @s orace_done 1
execute store result score @s orace_tmp run clear @s minecraft:cooked_porkchop 0
execute if score @s orace_tmp matches 1.. run scoreboard players set @s orace_done 1
execute store result score @s orace_tmp run clear @s minecraft:cooked_chicken 0
execute if score @s orace_tmp matches 1.. run scoreboard players set @s orace_done 1
execute store result score @s orace_tmp run clear @s minecraft:cooked_mutton 0
execute if score @s orace_tmp matches 1.. run scoreboard players set @s orace_done 1
execute store result score @s orace_tmp run clear @s minecraft:baked_potato 0
execute if score @s orace_tmp matches 1.. run scoreboard players set @s orace_done 1

