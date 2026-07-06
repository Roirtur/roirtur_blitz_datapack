function roirtur_blitz:games/objective_race/game/freeze_players
title @a[tag=orace.active] actionbar [{"text":"Starting in ","color":"yellow"},{"score":{"name":"#countdown","objective":"orace_timer"},"color":"gold"}]
execute if score #countdown orace_timer matches 1 run title @a[tag=orace.active] subtitle {"text":"Go!","color":"green"}
scoreboard players remove #countdown orace_timer 1
execute if score #countdown orace_timer matches ..0 run function roirtur_blitz:games/objective_race/game/begin_round

