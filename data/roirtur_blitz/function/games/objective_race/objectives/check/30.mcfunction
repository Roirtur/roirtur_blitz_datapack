execute store result score @s orace_tmp run clear @s minecraft:redstone 0
execute if score @s orace_tmp matches 8.. run scoreboard players set @s orace_done 1

