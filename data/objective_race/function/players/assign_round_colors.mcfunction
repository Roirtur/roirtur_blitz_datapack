scoreboard players set #next_color orace_tmp 1
scoreboard players reset @a orace_pcolor
execute as @a[tag=orace.active] run function objective_race:players/assign_color
