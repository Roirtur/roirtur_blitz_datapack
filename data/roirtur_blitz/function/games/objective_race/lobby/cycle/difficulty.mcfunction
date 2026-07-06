scoreboard players add #difficulty or_lobby 1
execute if score #difficulty or_lobby matches 4.. run scoreboard players set #difficulty or_lobby 0

execute if score #difficulty or_lobby matches 0 run function roirtur_blitz:games/objective_race/settings/difficulty_easy
execute if score #difficulty or_lobby matches 0 run data modify entity @e[type=minecraft:text_display,tag=orace.display_difficulty,limit=1,sort=nearest] text set value {text:'DIFFICULTY\nEASY',color:'green',bold:true}
execute if score #difficulty or_lobby matches 0 run title @s actionbar {text:'Difficulty: Easy',color:'green'}

execute if score #difficulty or_lobby matches 1 run function roirtur_blitz:games/objective_race/settings/difficulty_balanced
execute if score #difficulty or_lobby matches 1 run data modify entity @e[type=minecraft:text_display,tag=orace.display_difficulty,limit=1,sort=nearest] text set value {text:'DIFFICULTY\nBALANCED',color:'yellow',bold:true}
execute if score #difficulty or_lobby matches 1 run title @s actionbar {text:'Difficulty: Balanced',color:'yellow'}

execute if score #difficulty or_lobby matches 2 run function roirtur_blitz:games/objective_race/settings/difficulty_chaos
execute if score #difficulty or_lobby matches 2 run data modify entity @e[type=minecraft:text_display,tag=orace.display_difficulty,limit=1,sort=nearest] text set value {text:'DIFFICULTY\nCHAOS',color:'dark_purple',bold:true}
execute if score #difficulty or_lobby matches 2 run title @s actionbar {text:'Difficulty: Chaos',color:'dark_purple'}

execute if score #difficulty or_lobby matches 3 run function roirtur_blitz:games/objective_race/settings/difficulty_hardcore
execute if score #difficulty or_lobby matches 3 run data modify entity @e[type=minecraft:text_display,tag=orace.display_difficulty,limit=1,sort=nearest] text set value {text:'DIFFICULTY\nHARDCORE',color:'red',bold:true}
execute if score #difficulty or_lobby matches 3 run title @s actionbar {text:'Difficulty: Hardcore',color:'red'}
