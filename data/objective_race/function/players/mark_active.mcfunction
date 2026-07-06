tag @s add orace.active
scoreboard players set @s orace_act 1
gamemode survival @s
effect clear @s
data merge entity @s {Invulnerable:0b,FallDistance:0f,Fire:0s,Air:300s}
