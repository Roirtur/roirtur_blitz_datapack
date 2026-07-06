scoreboard players add #mode or_lobby 1
execute if score #mode or_lobby matches 2.. run scoreboard players set #mode or_lobby 0

execute if score #mode or_lobby matches 0 run function objective_race:settings/mode_shared
execute if score #mode or_lobby matches 0 run data modify entity @e[type=minecraft:text_display,tag=orace.display_mode,limit=1,sort=nearest] text set value {text:'MODE\nSHARED',color:'gold',bold:true}
execute if score #mode or_lobby matches 0 run title @s actionbar {text:'Mode: Shared',color:'gold'}

execute if score #mode or_lobby matches 1 run function objective_race:settings/mode_list
execute if score #mode or_lobby matches 1 run data modify entity @e[type=minecraft:text_display,tag=orace.display_mode,limit=1,sort=nearest] text set value {text:'MODE\nLIST',color:'gold',bold:true}
execute if score #mode or_lobby matches 1 run title @s actionbar {text:'Mode: List',color:'gold'}