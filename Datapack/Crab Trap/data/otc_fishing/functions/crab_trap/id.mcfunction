execute store result score @s OtcFishingCrabTrapId run scoreboard players add $max OtcFishingCrabTrapId 1
scoreboard players operation @e[tag=otc_fishing_crab_trap,tag=!otc_fishing_id,limit=1,sort=nearest] OtcFishingCrabTrapId = @s OtcFishingCrabTrapId
scoreboard players operation @e[tag=otc_fishing_crab_trap_click,tag=!otc_fishing_id,limit=1,sort=nearest] OtcFishingCrabTrapId = @s OtcFishingCrabTrapId
tag @s add otc_fishing_id
execute store result score @s OtcFishingTimer run time query daytime 
execute store result score @s OtcFishingTimerDay run time query day 