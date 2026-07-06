scoreboard players add #time or_lobby 1
execute if score #time or_lobby matches 5.. run scoreboard players set #time or_lobby 0

execute if score #time or_lobby matches 0 run function objective_race:settings/time_300
execute if score #time or_lobby matches 0 run data modify entity @e[type=minecraft:text_display,tag=orace.display_time,limit=1,sort=nearest] text set value {text:'TIME LIMIT\n5 MIN',color:'aqua',bold:true}
execute if score #time or_lobby matches 0 run title @s actionbar {text:'Time: 5 minutes',color:'aqua'}

execute if score #time or_lobby matches 1 run function objective_race:settings/time_600
execute if score #time or_lobby matches 1 run data modify entity @e[type=minecraft:text_display,tag=orace.display_time,limit=1,sort=nearest] text set value {text:'TIME LIMIT\n10 MIN',color:'aqua',bold:true}
execute if score #time or_lobby matches 1 run title @s actionbar {text:'Time: 10 minutes',color:'aqua'}

execute if score #time or_lobby matches 2 run function objective_race:settings/time_900
execute if score #time or_lobby matches 2 run data modify entity @e[type=minecraft:text_display,tag=orace.display_time,limit=1,sort=nearest] text set value {text:'TIME LIMIT\n15 MIN',color:'aqua',bold:true}
execute if score #time or_lobby matches 2 run title @s actionbar {text:'Time: 15 minutes',color:'aqua'}

execute if score #time or_lobby matches 3 run function objective_race:settings/time_1200
execute if score #time or_lobby matches 3 run data modify entity @e[type=minecraft:text_display,tag=orace.display_time,limit=1,sort=nearest] text set value {text:'TIME LIMIT\n20 MIN',color:'aqua',bold:true}
execute if score #time or_lobby matches 3 run title @s actionbar {text:'Time: 20 minutes',color:'aqua'}

execute if score #time or_lobby matches 4 run function objective_race:settings/time_unlimited
execute if score #time or_lobby matches 4 run data modify entity @e[type=minecraft:text_display,tag=orace.display_time,limit=1,sort=nearest] text set value {text:'TIME LIMIT\nNO LIMIT',color:'green',bold:true}
execute if score #time or_lobby matches 4 run title @s actionbar {text:'Time: no limit',color:'green'}
