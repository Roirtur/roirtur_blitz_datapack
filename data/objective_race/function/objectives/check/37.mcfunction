execute store result score @s orace_tmp run clear @s minecraft:amethyst_shard 0
execute if score @s orace_tmp matches 1.. run scoreboard players set @s orace_done 1
