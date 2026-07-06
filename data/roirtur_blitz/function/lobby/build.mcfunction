# Roirtur Blitz - Main Lobby
# Stand at the desired center, then run:
# /function roirtur_blitz:lobby/build

kill @e[tag=blitz.lobby_text,distance=..80]
kill @e[tag=blitz.lobby_click,distance=..80]

fill ~-12 ~-1 ~-12 ~12 ~8 ~12 minecraft:air
fill ~-10 ~-1 ~-10 ~10 ~-1 ~10 minecraft:smooth_quartz
fill ~-9 ~-1 ~-9 ~9 ~-1 ~9 minecraft:quartz_bricks
fill ~-10 ~0 ~-10 ~10 ~5 ~-10 minecraft:polished_deepslate
fill ~-10 ~0 ~10 ~10 ~5 ~10 minecraft:white_stained_glass
fill ~-10 ~0 ~-9 ~-10 ~5 ~9 minecraft:white_stained_glass
fill ~10 ~0 ~-9 ~10 ~5 ~9 minecraft:white_stained_glass
fill ~-10 ~5 ~-10 ~10 ~5 ~10 minecraft:smooth_quartz
setblock ~ ~-1 ~ minecraft:gold_block
setblock ~ ~5 ~ minecraft:sea_lantern
setblock ~-6 ~5 ~-6 minecraft:sea_lantern
setblock ~6 ~5 ~-6 minecraft:sea_lantern
setblock ~-6 ~5 ~6 minecraft:sea_lantern
setblock ~6 ~5 ~6 minecraft:sea_lantern

summon minecraft:text_display ~0 ~4.1 ~-7.9 {Tags:["blitz.lobby_text"],billboard:"center",alignment:"center",shadow:0b,brightness:{sky:15,block:15},text:{text:'ROIRTUR BLITZ',color:'gold',bold:true},transformation:{scale:[1.2f,1.2f,1.2f]}}
summon minecraft:text_display ~0 ~3.55 ~-7.9 {Tags:["blitz.lobby_text"],billboard:"center",alignment:"center",shadow:0b,brightness:{sky:15,block:15},text:{text:'Main Lobby',color:'yellow',bold:true},transformation:{scale:[0.85f,0.85f,0.85f]}}
summon minecraft:text_display ~0 ~3.0 ~-7.9 {Tags:["blitz.lobby_text"],billboard:"center",alignment:"center",shadow:0b,brightness:{sky:15,block:15},text:{text:'Choose a subgame or use this as your Blitz hub.',color:'gray'},transformation:{scale:[0.55f,0.55f,0.55f]}}

summon minecraft:text_display ~0 ~2.1 ~-7.9 {Tags:["blitz.lobby_text"],billboard:"center",alignment:"center",shadow:0b,brightness:{sky:15,block:15},text:{text:'OBJECTIVE RACE\nClick to teleport to the Objective Race lobby',color:'aqua',bold:true},transformation:{scale:[0.72f,0.72f,0.72f]}}
summon minecraft:interaction ~0 ~2.1 ~-7.9 {Tags:["blitz.lobby_click","blitz.click_objective_race"],width:4.0f,height:0.9f,response:1b}

summon minecraft:text_display ~-6.5 ~1.4 ~-7.9 {Tags:["blitz.lobby_text"],billboard:"center",alignment:"center",shadow:0b,brightness:{sky:15,block:15},text:{text:'RELIC CHAOS\nFuture Slot',color:'dark_gray',bold:true},transformation:{scale:[0.55f,0.55f,0.55f]}}
summon minecraft:text_display ~6.5 ~1.4 ~-7.9 {Tags:["blitz.lobby_text"],billboard:"center",alignment:"center",shadow:0b,brightness:{sky:15,block:15},text:{text:'STOCK MARKET\nFuture Slot',color:'dark_gray',bold:true},transformation:{scale:[0.55f,0.55f,0.55f]}}

function roirtur_blitz:lobby/set
execute positioned ~34 ~ ~ run function roirtur_blitz:games/objective_race/lobby/build

tellraw @s [{"text":"Roirtur Blitz main lobby built.","color":"green"}]
tellraw @s [{"text":"Objective Race lobby built 34 blocks east and can also be reached with ","color":"yellow"},{"text":"/function roirtur_blitz:games/objective_race/lobby/tp","color":"aqua"}]
