scoreboard players operation @s orace_pcolor = #spawn_slot orace_tmp
scoreboard players add #spawn_slot orace_tmp 1
execute if score #spawn_slot orace_tmp matches 16.. run scoreboard players set #spawn_slot orace_tmp 1
