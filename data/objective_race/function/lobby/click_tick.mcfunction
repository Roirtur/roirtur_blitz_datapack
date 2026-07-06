execute as @e[type=minecraft:interaction,tag=orace.click_target] at @s if data entity @s interaction run function objective_race:lobby/click/target
execute as @e[type=minecraft:interaction,tag=orace.click_time] at @s if data entity @s interaction run function objective_race:lobby/click/time
execute as @e[type=minecraft:interaction,tag=orace.click_mode] at @s if data entity @s interaction run function objective_race:lobby/click/mode
execute as @e[type=minecraft:interaction,tag=orace.click_difficulty] at @s if data entity @s interaction run function objective_race:lobby/click/difficulty
execute as @e[type=minecraft:interaction,tag=orace.click_keepinv] at @s if data entity @s interaction run function objective_race:lobby/click/keep_inventory
execute as @e[type=minecraft:interaction,tag=orace.click_start] at @s if data entity @s interaction run function objective_race:lobby/click/start
execute as @e[type=minecraft:interaction,tag=orace.click_show] at @s if data entity @s interaction run function objective_race:lobby/click/show