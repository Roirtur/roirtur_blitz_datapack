execute store result score @s orace_tmp run clear @s minecraft:cobblestone 0
execute if score @s orace_tmp matches 32.. run scoreboard players set @s orace_done 1
