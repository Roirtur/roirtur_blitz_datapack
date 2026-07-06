function objective_race:util/reset_objective_flags
scoreboard players operation #list_target orace_list = #target orace_target
scoreboard players operation #list_target orace_list += #target orace_target
scoreboard players remove #list_target orace_list 1
scoreboard players set #list_count orace_list 0
function objective_race:objectives/list/generate_step
tellraw @a[tag=orace.active] [{"text":"Objective list generated.","color":"gold"}]
function objective_race:ui/list_sidebar_refresh
scoreboard objectives setdisplay sidebar orace_board
function objective_race:ui/show_color_legend
function objective_race:ui/show_list
