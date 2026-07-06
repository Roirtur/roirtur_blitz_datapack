scoreboard players set @s orace_done 0
scoreboard players set @s orace_scan 0
scoreboard players set @s orace_tmp 0
execute if score @s orace_scan matches 0 if score obj01 orace_list matches 1.. if score obj01 orace_claim matches 0 run function objective_race:objectives/check/01
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj01 orace_claim matches 0 run scoreboard players set #current orace_cur 1
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj01 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj02 orace_list matches 1.. if score obj02 orace_claim matches 0 run function objective_race:objectives/check/02
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj02 orace_claim matches 0 run scoreboard players set #current orace_cur 2
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj02 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj03 orace_list matches 1.. if score obj03 orace_claim matches 0 run function objective_race:objectives/check/03
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj03 orace_claim matches 0 run scoreboard players set #current orace_cur 3
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj03 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj04 orace_list matches 1.. if score obj04 orace_claim matches 0 run function objective_race:objectives/check/04
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj04 orace_claim matches 0 run scoreboard players set #current orace_cur 4
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj04 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj05 orace_list matches 1.. if score obj05 orace_claim matches 0 run function objective_race:objectives/check/05
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj05 orace_claim matches 0 run scoreboard players set #current orace_cur 5
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj05 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj06 orace_list matches 1.. if score obj06 orace_claim matches 0 run function objective_race:objectives/check/06
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj06 orace_claim matches 0 run scoreboard players set #current orace_cur 6
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj06 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj07 orace_list matches 1.. if score obj07 orace_claim matches 0 run function objective_race:objectives/check/07
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj07 orace_claim matches 0 run scoreboard players set #current orace_cur 7
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj07 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj08 orace_list matches 1.. if score obj08 orace_claim matches 0 run function objective_race:objectives/check/08
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj08 orace_claim matches 0 run scoreboard players set #current orace_cur 8
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj08 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj09 orace_list matches 1.. if score obj09 orace_claim matches 0 run function objective_race:objectives/check/09
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj09 orace_claim matches 0 run scoreboard players set #current orace_cur 9
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj09 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj10 orace_list matches 1.. if score obj10 orace_claim matches 0 run function objective_race:objectives/check/10
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj10 orace_claim matches 0 run scoreboard players set #current orace_cur 10
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj10 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj11 orace_list matches 1.. if score obj11 orace_claim matches 0 run function objective_race:objectives/check/11
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj11 orace_claim matches 0 run scoreboard players set #current orace_cur 11
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj11 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj12 orace_list matches 1.. if score obj12 orace_claim matches 0 run function objective_race:objectives/check/12
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj12 orace_claim matches 0 run scoreboard players set #current orace_cur 12
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj12 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj13 orace_list matches 1.. if score obj13 orace_claim matches 0 run function objective_race:objectives/check/13
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj13 orace_claim matches 0 run scoreboard players set #current orace_cur 13
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj13 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj14 orace_list matches 1.. if score obj14 orace_claim matches 0 run function objective_race:objectives/check/14
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj14 orace_claim matches 0 run scoreboard players set #current orace_cur 14
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj14 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj15 orace_list matches 1.. if score obj15 orace_claim matches 0 run function objective_race:objectives/check/15
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj15 orace_claim matches 0 run scoreboard players set #current orace_cur 15
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj15 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj16 orace_list matches 1.. if score obj16 orace_claim matches 0 run function objective_race:objectives/check/16
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj16 orace_claim matches 0 run scoreboard players set #current orace_cur 16
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj16 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj17 orace_list matches 1.. if score obj17 orace_claim matches 0 run function objective_race:objectives/check/17
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj17 orace_claim matches 0 run scoreboard players set #current orace_cur 17
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj17 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj18 orace_list matches 1.. if score obj18 orace_claim matches 0 run function objective_race:objectives/check/18
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj18 orace_claim matches 0 run scoreboard players set #current orace_cur 18
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj18 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj19 orace_list matches 1.. if score obj19 orace_claim matches 0 run function objective_race:objectives/check/19
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj19 orace_claim matches 0 run scoreboard players set #current orace_cur 19
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj19 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj20 orace_list matches 1.. if score obj20 orace_claim matches 0 run function objective_race:objectives/check/20
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj20 orace_claim matches 0 run scoreboard players set #current orace_cur 20
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj20 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj21 orace_list matches 1.. if score obj21 orace_claim matches 0 run function objective_race:objectives/check/21
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj21 orace_claim matches 0 run scoreboard players set #current orace_cur 21
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj21 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj22 orace_list matches 1.. if score obj22 orace_claim matches 0 run function objective_race:objectives/check/22
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj22 orace_claim matches 0 run scoreboard players set #current orace_cur 22
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj22 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj23 orace_list matches 1.. if score obj23 orace_claim matches 0 run function objective_race:objectives/check/23
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj23 orace_claim matches 0 run scoreboard players set #current orace_cur 23
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj23 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj24 orace_list matches 1.. if score obj24 orace_claim matches 0 run function objective_race:objectives/check/24
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj24 orace_claim matches 0 run scoreboard players set #current orace_cur 24
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj24 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj25 orace_list matches 1.. if score obj25 orace_claim matches 0 run function objective_race:objectives/check/25
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj25 orace_claim matches 0 run scoreboard players set #current orace_cur 25
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj25 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj26 orace_list matches 1.. if score obj26 orace_claim matches 0 run function objective_race:objectives/check/26
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj26 orace_claim matches 0 run scoreboard players set #current orace_cur 26
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj26 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj27 orace_list matches 1.. if score obj27 orace_claim matches 0 run function objective_race:objectives/check/27
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj27 orace_claim matches 0 run scoreboard players set #current orace_cur 27
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj27 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj28 orace_list matches 1.. if score obj28 orace_claim matches 0 run function objective_race:objectives/check/28
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj28 orace_claim matches 0 run scoreboard players set #current orace_cur 28
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj28 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj29 orace_list matches 1.. if score obj29 orace_claim matches 0 run function objective_race:objectives/check/29
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj29 orace_claim matches 0 run scoreboard players set #current orace_cur 29
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj29 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj30 orace_list matches 1.. if score obj30 orace_claim matches 0 run function objective_race:objectives/check/30
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj30 orace_claim matches 0 run scoreboard players set #current orace_cur 30
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj30 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj31 orace_list matches 1.. if score obj31 orace_claim matches 0 run function objective_race:objectives/check/31
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj31 orace_claim matches 0 run scoreboard players set #current orace_cur 31
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj31 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj32 orace_list matches 1.. if score obj32 orace_claim matches 0 run function objective_race:objectives/check/32
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj32 orace_claim matches 0 run scoreboard players set #current orace_cur 32
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj32 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj33 orace_list matches 1.. if score obj33 orace_claim matches 0 run function objective_race:objectives/check/33
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj33 orace_claim matches 0 run scoreboard players set #current orace_cur 33
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj33 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj34 orace_list matches 1.. if score obj34 orace_claim matches 0 run function objective_race:objectives/check/34
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj34 orace_claim matches 0 run scoreboard players set #current orace_cur 34
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj34 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj35 orace_list matches 1.. if score obj35 orace_claim matches 0 run function objective_race:objectives/check/35
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj35 orace_claim matches 0 run scoreboard players set #current orace_cur 35
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj35 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj36 orace_list matches 1.. if score obj36 orace_claim matches 0 run function objective_race:objectives/check/36
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj36 orace_claim matches 0 run scoreboard players set #current orace_cur 36
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj36 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj37 orace_list matches 1.. if score obj37 orace_claim matches 0 run function objective_race:objectives/check/37
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj37 orace_claim matches 0 run scoreboard players set #current orace_cur 37
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj37 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj38 orace_list matches 1.. if score obj38 orace_claim matches 0 run function objective_race:objectives/check/38
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj38 orace_claim matches 0 run scoreboard players set #current orace_cur 38
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj38 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj39 orace_list matches 1.. if score obj39 orace_claim matches 0 run function objective_race:objectives/check/39
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj39 orace_claim matches 0 run scoreboard players set #current orace_cur 39
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj39 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj40 orace_list matches 1.. if score obj40 orace_claim matches 0 run function objective_race:objectives/check/40
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj40 orace_claim matches 0 run scoreboard players set #current orace_cur 40
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj40 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj41 orace_list matches 1.. if score obj41 orace_claim matches 0 run function objective_race:objectives/check/41
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj41 orace_claim matches 0 run scoreboard players set #current orace_cur 41
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj41 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj42 orace_list matches 1.. if score obj42 orace_claim matches 0 run function objective_race:objectives/check/42
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj42 orace_claim matches 0 run scoreboard players set #current orace_cur 42
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj42 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj43 orace_list matches 1.. if score obj43 orace_claim matches 0 run function objective_race:objectives/check/43
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj43 orace_claim matches 0 run scoreboard players set #current orace_cur 43
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj43 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj44 orace_list matches 1.. if score obj44 orace_claim matches 0 run function objective_race:objectives/check/44
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj44 orace_claim matches 0 run scoreboard players set #current orace_cur 44
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj44 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj45 orace_list matches 1.. if score obj45 orace_claim matches 0 run function objective_race:objectives/check/45
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj45 orace_claim matches 0 run scoreboard players set #current orace_cur 45
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj45 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj46 orace_list matches 1.. if score obj46 orace_claim matches 0 run function objective_race:objectives/check/46
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj46 orace_claim matches 0 run scoreboard players set #current orace_cur 46
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj46 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj47 orace_list matches 1.. if score obj47 orace_claim matches 0 run function objective_race:objectives/check/47
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj47 orace_claim matches 0 run scoreboard players set #current orace_cur 47
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj47 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj48 orace_list matches 1.. if score obj48 orace_claim matches 0 run function objective_race:objectives/check/48
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj48 orace_claim matches 0 run scoreboard players set #current orace_cur 48
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj48 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj49 orace_list matches 1.. if score obj49 orace_claim matches 0 run function objective_race:objectives/check/49
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj49 orace_claim matches 0 run scoreboard players set #current orace_cur 49
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj49 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj50 orace_list matches 1.. if score obj50 orace_claim matches 0 run function objective_race:objectives/check/50
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj50 orace_claim matches 0 run scoreboard players set #current orace_cur 50
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj50 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj51 orace_list matches 1.. if score obj51 orace_claim matches 0 run function objective_race:objectives/check/51
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj51 orace_claim matches 0 run scoreboard players set #current orace_cur 51
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj51 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj52 orace_list matches 1.. if score obj52 orace_claim matches 0 run function objective_race:objectives/check/52
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj52 orace_claim matches 0 run scoreboard players set #current orace_cur 52
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj52 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj53 orace_list matches 1.. if score obj53 orace_claim matches 0 run function objective_race:objectives/check/53
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj53 orace_claim matches 0 run scoreboard players set #current orace_cur 53
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj53 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj54 orace_list matches 1.. if score obj54 orace_claim matches 0 run function objective_race:objectives/check/54
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj54 orace_claim matches 0 run scoreboard players set #current orace_cur 54
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj54 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj55 orace_list matches 1.. if score obj55 orace_claim matches 0 run function objective_race:objectives/check/55
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj55 orace_claim matches 0 run scoreboard players set #current orace_cur 55
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj55 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj56 orace_list matches 1.. if score obj56 orace_claim matches 0 run function objective_race:objectives/check/56
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj56 orace_claim matches 0 run scoreboard players set #current orace_cur 56
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj56 orace_claim matches 0 run function objective_race:objectives/list/claim_current
execute if score @s orace_scan matches 0 if score obj57 orace_list matches 1.. if score obj57 orace_claim matches 0 run function objective_race:objectives/check/57
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj57 orace_claim matches 0 run scoreboard players set #current orace_cur 57
execute if score @s orace_done matches 1 if score @s orace_scan matches 0 if score obj57 orace_claim matches 0 run function objective_race:objectives/list/claim_current
