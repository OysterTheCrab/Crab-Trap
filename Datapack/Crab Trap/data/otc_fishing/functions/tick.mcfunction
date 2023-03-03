schedule function otc_fishing:tick 1t replace


# Checks if player can place a crab trap and places it
execute as @e[type=cod,tag=otc_fishing_crab_trap_spawn] at @s if block ~ ~ ~ #otc_fishing:water if block ~ ~-1 ~ #otc_fishing:non_water_blocks run function otc_fishing:crab_trap/setup

# Error messages
execute as @e[type=cod,tag=otc_fishing_crab_trap_spawn] at @s unless block ~ ~ ~ #otc_fishing:water run function otc_fishing:crab_trap/error
execute as @e[type=cod,tag=otc_fishing_crab_trap_spawn] at @s if entity @e[tag=otc_fishing_crab_trap_track,distance=..0.01] run function otc_fishing:crab_trap/error

# Constant check to see if the crab trap meets criterion for being "filled"
execute as @e[tag=otc_fishing_crab_trap_track,tag=otc_fishing_id] run function otc_fishing:crab_trap/check

# Resets the player sleep check cycle
execute if score $day OtcFishingSleep matches 1 if score $sleep OtcFishingSleep matches 1 run scoreboard players set $sleep OtcFishingSleep 0
execute if score $day OtcFishingSleep matches 1 if score $check OtcFishingSleep matches 1 run scoreboard players set $check OtcFishingSleep 0