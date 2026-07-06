execute if score #difficulty orace_diff matches 0 store result score #candidate orace_cur run random value 1..24
execute if score #difficulty orace_diff matches 1 store result score #roll orace_rand run random value 1..100
execute if score #difficulty orace_diff matches 1 if score #roll orace_rand matches 1..50 store result score #candidate orace_cur run random value 1..24
execute if score #difficulty orace_diff matches 1 if score #roll orace_rand matches 51..85 store result score #candidate orace_cur run random value 25..45
execute if score #difficulty orace_diff matches 1 if score #roll orace_rand matches 86..100 store result score #candidate orace_cur run random value 46..57
execute if score #difficulty orace_diff matches 2 store result score #roll orace_rand run random value 1..100
execute if score #difficulty orace_diff matches 2 if score #roll orace_rand matches 1..20 store result score #candidate orace_cur run random value 1..24
execute if score #difficulty orace_diff matches 2 if score #roll orace_rand matches 21..60 store result score #candidate orace_cur run random value 25..45
execute if score #difficulty orace_diff matches 2 if score #roll orace_rand matches 61..100 store result score #candidate orace_cur run random value 46..57
execute if score #difficulty orace_diff matches 3 store result score #roll orace_rand run random value 1..3
execute if score #difficulty orace_diff matches 3 if score #roll orace_rand matches 1 store result score #candidate orace_cur run random value 1..24
execute if score #difficulty orace_diff matches 3 if score #roll orace_rand matches 2 store result score #candidate orace_cur run random value 25..45
execute if score #difficulty orace_diff matches 3 if score #roll orace_rand matches 3 store result score #candidate orace_cur run random value 46..57
