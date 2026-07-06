tellraw @a[tag=orace.active] [{"text":"Objective list colors:","color":"gold"}]
execute as @a[tag=orace.active] run function objective_race:ui/show_color_legend_line
