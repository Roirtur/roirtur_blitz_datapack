scoreboard players operation @s orace_pcolor = #next_color orace_tmp
scoreboard players add #next_color orace_tmp 1
execute if score #next_color orace_tmp matches 16.. run scoreboard players set #next_color orace_tmp 1

