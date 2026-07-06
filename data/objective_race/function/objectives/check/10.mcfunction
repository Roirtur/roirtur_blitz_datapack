execute store result score @s orace_tmp run clear @s minecraft:raw_iron 0
execute if score @s orace_tmp matches 4.. run scoreboard players set @s orace_done 1
