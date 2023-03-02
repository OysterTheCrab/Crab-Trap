scoreboard players operation $current OtcFishingCrabTrapId = @s OtcFishingCrabTrapId

execute if score @s OtcFishingTimer = $current OtcFishingTimer unless score @s OtcFishingTimerDay = $current OtcFishingTimerDay if predicate otc_fishing:75 as @e[tag=otc_fishing_crab_trap,predicate=otc_fishing:match_score_crab_trap] at @s run function otc_fishing:crab_trap/catch