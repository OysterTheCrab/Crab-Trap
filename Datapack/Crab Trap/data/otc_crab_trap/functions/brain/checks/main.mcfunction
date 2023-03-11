
# Checks if the current time matches the rng time 
execute if score @s OtcFishingTimer = $current OtcFishingTimer run function otc_crab_trap:brain/catch
execute if score $sleep OtcFishingSleep matches 1 if score $day OtcFishingSleep matches 1 if score @s OtcFishingSleep matches 0 run function otc_crab_trap:brain/catch
