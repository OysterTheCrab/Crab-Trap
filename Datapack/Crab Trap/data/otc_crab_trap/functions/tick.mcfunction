schedule function otc_crab_trap:tick 1t replace


# Checks if player can place a crab trap and places it
execute as @e[type=cod,tag=OtcCrabTrapSpawn] at @s if block ~ ~ ~ #otc_crab_trap:water if block ~ ~-1 ~ #otc_crab_trap:non_water_blocks run function otc_crab_trap:brain/place/setup

# Error messages if a player places a crab trap incorrectly
execute as @e[type=cod,tag=OtcCrabTrapSpawn] at @s unless block ~ ~ ~ #otc_crab_trap:water run function otc_crab_trap:brain/place/error
execute as @e[type=cod,tag=OtcCrabTrapSpawn] at @s if entity @e[tag=OtcCrabTrapInteraction,distance=..0.01] run function otc_crab_trap:brain/place/error

# Check to see if the crab trap meets criterion for being "filled"
execute as @e[type=interaction,tag=OtcCrabTrapInteraction] at @s run function otc_crab_trap:brain/checks/main


# Resets the player sleep check cycle
execute if score $day OtcFishingSleep matches 1 if score $sleep OtcFishingSleep matches 1 run scoreboard players set $sleep OtcFishingSleep 0
execute as @e[type=interaction,tag=OtcCrabTrapInteraction] if score $day OtcFishingSleep matches 1 run scoreboard players set @s OtcFishingSleep 0
