execute if score #check_mode orace_flag matches 1 run scoreboard players operation @s orace_tmp = @s ormob
execute if score #check_mode orace_flag matches 1 run scoreboard players operation @s orace_tmp -= @s orcmob
execute if score #check_mode orace_flag matches 1 if score @s orace_tmp matches 10.. run scoreboard players set @s orace_done 1
execute if score #check_mode orace_flag matches 2 run scoreboard players operation @s orace_tmp = @s ormob
execute if score #check_mode orace_flag matches 2 run scoreboard players operation @s orace_tmp -= @s orbmob
execute if score #check_mode orace_flag matches 2 if score @s orace_tmp matches 10.. run scoreboard players set @s orace_done 1

