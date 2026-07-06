scoreboard players add #keepinv or_lobby 1
execute if score #keepinv or_lobby matches 2.. run scoreboard players set #keepinv or_lobby 0

execute if score #keepinv or_lobby matches 0 run function objective_race:settings/keep_inventory_on
execute if score #keepinv or_lobby matches 0 run data modify entity @e[type=minecraft:text_display,tag=orace.display_keepinv,limit=1,sort=nearest] text set value {text:'KEEP INV\nON',color:'green',bold:true}
execute if score #keepinv or_lobby matches 0 run title @s actionbar {text:'Keep inventory: ON',color:'green'}

execute if score #keepinv or_lobby matches 1 run function objective_race:settings/keep_inventory_off
execute if score #keepinv or_lobby matches 1 run data modify entity @e[type=minecraft:text_display,tag=orace.display_keepinv,limit=1,sort=nearest] text set value {text:'KEEP INV\nOFF',color:'red',bold:true}
execute if score #keepinv or_lobby matches 1 run title @s actionbar {text:'Keep inventory: OFF',color:'red'}