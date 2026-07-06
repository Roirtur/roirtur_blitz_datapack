tellraw @a [{"text":"Final scores:","color":"gold"}]
execute as @a[tag=orace.active] run tellraw @a [{"selector":"@s","color":"yellow"},{"text":": ","color":"gray"},{"score":{"name":"@s","objective":"orace_score"},"color":"aqua"}]

