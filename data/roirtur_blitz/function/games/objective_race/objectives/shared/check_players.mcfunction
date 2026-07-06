scoreboard players set #check_mode orace_flag 1
scoreboard players set #claim_lock orace_claim 0
execute as @a[tag=orace.active] run function roirtur_blitz:games/objective_race/objectives/shared/check_player

