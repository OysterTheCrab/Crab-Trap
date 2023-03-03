# Sets the id of the crab trap to $current to match id's
scoreboard players operation $current OtcFishingCrabTrapId = @s OtcFishingCrabTrapId

# Checks if the current time matches the rng time 
execute if score @s OtcFishingTimer = $current OtcFishingTimer if predicate otc_fishing:75 as @e[tag=otc_fishing_crab_trap,predicate=otc_fishing:match_score_crab_trap] at @s run function otc_fishing:crab_trap/catch

# Checks if the night was skipped via sleeping
execute if score $sleep OtcFishingSleep matches 1 if score $day OtcFishingSleep matches 1 if score $check OtcFishingSleep matches 0 as @e[tag=otc_fishing_crab_trap,predicate=otc_fishing:match_score_crab_trap] at @s run function otc_fishing:crab_trap/catch
