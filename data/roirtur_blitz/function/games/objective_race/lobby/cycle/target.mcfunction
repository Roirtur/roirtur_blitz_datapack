scoreboard players add #target or_lobby 1
execute if score #target or_lobby matches 4.. run scoreboard players set #target or_lobby 0

execute if score #target or_lobby matches 0 run function roirtur_blitz:games/objective_race/settings/target_3
execute if score #target or_lobby matches 0 run data modify entity @e[type=minecraft:text_display,tag=orace.display_target,limit=1,sort=nearest] text set value {text:'TARGET COUNT\n3 POINTS',color:'yellow',bold:true}
execute if score #target or_lobby matches 0 run title @s actionbar {text:'Target count: 3 points',color:'yellow'}

execute if score #target or_lobby matches 1 run function roirtur_blitz:games/objective_race/settings/target_5
execute if score #target or_lobby matches 1 run data modify entity @e[type=minecraft:text_display,tag=orace.display_target,limit=1,sort=nearest] text set value {text:'TARGET COUNT\n5 POINTS',color:'yellow',bold:true}
execute if score #target or_lobby matches 1 run title @s actionbar {text:'Target count: 5 points',color:'yellow'}

execute if score #target or_lobby matches 2 run function roirtur_blitz:games/objective_race/settings/target_7
execute if score #target or_lobby matches 2 run data modify entity @e[type=minecraft:text_display,tag=orace.display_target,limit=1,sort=nearest] text set value {text:'TARGET COUNT\n7 POINTS',color:'yellow',bold:true}
execute if score #target or_lobby matches 2 run title @s actionbar {text:'Target count: 7 points',color:'yellow'}

execute if score #target or_lobby matches 3 run function roirtur_blitz:games/objective_race/settings/target_10
execute if score #target or_lobby matches 3 run data modify entity @e[type=minecraft:text_display,tag=orace.display_target,limit=1,sort=nearest] text set value {text:'TARGET COUNT\n10 POINTS',color:'yellow',bold:true}
execute if score #target or_lobby matches 3 run title @s actionbar {text:'Target count: 10 points',color:'yellow'}

