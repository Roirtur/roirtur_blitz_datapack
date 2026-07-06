scoreboard objectives add orace_state dummy
scoreboard objectives add orace_timer dummy
scoreboard objectives add orace_round dummy
scoreboard objectives add orace_target dummy
scoreboard objectives add orace_score dummy
scoreboard objectives add orace_mode dummy
scoreboard objectives add orace_diff dummy
scoreboard objectives add orace_keep dummy
scoreboard objectives add orace_pow dummy
scoreboard objectives add orace_ptimer dummy
scoreboard objectives add orace_claim dummy
scoreboard objectives add orace_rand dummy
scoreboard objectives add orace_tmp dummy
scoreboard objectives add orace_best dummy
scoreboard objectives add orace_last dummy
scoreboard objectives add orace_cur dummy
scoreboard objectives add orace_done dummy
scoreboard objectives add orace_near dummy
scoreboard objectives add orace_safe dummy
scoreboard objectives add orace_food dummy
scoreboard objectives add orace_list dummy
scoreboard objectives add orace_act dummy
scoreboard objectives add orace_flag dummy
scoreboard objectives add orace_board dummy
scoreboard objectives add orace_slot dummy
scoreboard objectives add orace_owner dummy
scoreboard objectives add orace_pcolor dummy
scoreboard objectives add orace_spawn dummy
scoreboard objectives add orace_scan dummy
scoreboard objectives add orstbl minecraft.crafted:minecraft.crafting_table
scoreboard objectives add orswsw minecraft.crafted:minecraft.wooden_sword
scoreboard objectives add orsssw minecraft.crafted:minecraft.stone_sword
scoreboard objectives add orsspk minecraft.crafted:minecraft.stone_pickaxe
scoreboard objectives add orsfun minecraft.crafted:minecraft.furnace
scoreboard objectives add orsshd minecraft.crafted:minecraft.shield
scoreboard objectives add orsbkt minecraft.crafted:minecraft.bucket
scoreboard objectives add orsisw minecraft.crafted:minecraft.iron_sword
scoreboard objectives add orsipk minecraft.crafted:minecraft.iron_pickaxe
scoreboard objectives add orsbow minecraft.crafted:minecraft.bow
scoreboard objectives add orsspg minecraft.crafted:minecraft.spyglass
scoreboard objectives add orsxbw minecraft.crafted:minecraft.crossbow
scoreboard objectives add orstnt minecraft.crafted:minecraft.tnt
scoreboard objectives add orsenc minecraft.crafted:minecraft.enchanting_table
scoreboard objectives add orubow minecraft.used:minecraft.bow
scoreboard objectives add ormob minecraft.custom:minecraft.mob_kills
scoreboard objectives add orzom minecraft.killed:minecraft.zombie
scoreboard objectives add orske minecraft.killed:minecraft.skeleton
scoreboard objectives add orspi minecraft.killed:minecraft.spider
scoreboard objectives add ordmg minecraft.custom:minecraft.damage_taken
scoreboard objectives add orbtbl dummy
scoreboard objectives add orbwsw dummy
scoreboard objectives add orbssw dummy
scoreboard objectives add orbspk dummy
scoreboard objectives add orbfun dummy
scoreboard objectives add orbshd dummy
scoreboard objectives add orbbkt dummy
scoreboard objectives add orbisw dummy
scoreboard objectives add orbipk dummy
scoreboard objectives add orbbow dummy
scoreboard objectives add orbspg dummy
scoreboard objectives add orbxbw dummy
scoreboard objectives add orbtnt dummy
scoreboard objectives add orbenc dummy
scoreboard objectives add orbubow dummy
scoreboard objectives add orbmob dummy
scoreboard objectives add orbzom dummy
scoreboard objectives add orbske dummy
scoreboard objectives add orbspi dummy
scoreboard objectives add orctbl dummy
scoreboard objectives add orcwsw dummy
scoreboard objectives add orcssw dummy
scoreboard objectives add orcspk dummy
scoreboard objectives add orcfun dummy
scoreboard objectives add orcshd dummy
scoreboard objectives add orcbkt dummy
scoreboard objectives add orcisw dummy
scoreboard objectives add orcipk dummy
scoreboard objectives add orcbow dummy
scoreboard objectives add orcspg dummy
scoreboard objectives add orcxbw dummy
scoreboard objectives add orctnt dummy
scoreboard objectives add orcenc dummy
scoreboard objectives add orcubow dummy
scoreboard objectives add orcmob dummy
scoreboard objectives add orczom dummy
scoreboard objectives add orcske dummy
scoreboard objectives add orcspi dummy
scoreboard objectives add orldmg dummy
scoreboard objectives modify orace_score displayname {"text":"Race Scores","color":"gold"}
scoreboard objectives modify orace_board displayname {"text":"Objective List","color":"gold"}
scoreboard objectives modify orace_board numberformat blank
bossbar add roirtur_blitz:orace_timer {"text":"Objective Race","color":"gold"}
bossbar set roirtur_blitz:orace_timer color yellow
bossbar set roirtur_blitz:orace_timer style notched_10
bossbar set roirtur_blitz:orace_timer visible false
execute unless score #state orace_state matches 0..3 run scoreboard players set #state orace_state 0
execute unless score #target orace_target matches 3..10 run scoreboard players set #target orace_target 5
execute unless score #mode orace_mode matches 0..1 run scoreboard players set #mode orace_mode 0
execute unless score #difficulty orace_diff matches 0..3 run scoreboard players set #difficulty orace_diff 1
execute unless score #keepinv_setting orace_keep matches 0..1 run scoreboard players set #keepinv_setting orace_keep 1
execute unless score #powerups_enabled orace_pow matches 0..1 run scoreboard players set #powerups_enabled orace_pow 0
execute unless score #allow_solo orace_flag matches 0..1 run scoreboard players set #allow_solo orace_flag 0
execute unless score #round_time orace_round matches 0..3600 run scoreboard players set #round_time orace_round 600
execute if score #round_time orace_round matches 1..59 run scoreboard players set #round_time orace_round 600
execute unless score #arena_radius orace_flag matches 100..5000 run scoreboard players set #arena_radius orace_flag 500
execute unless score #spread_min orace_flag matches 16..1000 run scoreboard players set #spread_min orace_flag 80
execute unless score #spread_max orace_flag matches 32..5000 run scoreboard players set #spread_max orace_flag 250
execute unless score #last_objective orace_cur matches 0..57 run scoreboard players set #last_objective orace_cur 0
execute unless score #last_objective_2 orace_cur matches 0..57 run scoreboard players set #last_objective_2 orace_cur 0
execute unless score #countdown orace_timer matches 0..30 run scoreboard players set #countdown orace_timer 0
bossbar set roirtur_blitz:orace_timer players @a[tag=orace.active]
function roirtur_blitz:games/objective_race/ui/update_round_bar
execute if score #state orace_state matches 1..2 run bossbar set roirtur_blitz:orace_timer visible true
execute if score #state orace_state matches 1..2 if score #mode orace_mode matches 0 run scoreboard objectives setdisplay sidebar orace_score
execute if score #state orace_state matches 1..2 if score #mode orace_mode matches 1 run scoreboard objectives setdisplay sidebar orace_board
execute if score #state orace_state matches 2 if score #mode orace_mode matches 1 run function roirtur_blitz:games/objective_race/ui/list_sidebar_refresh

