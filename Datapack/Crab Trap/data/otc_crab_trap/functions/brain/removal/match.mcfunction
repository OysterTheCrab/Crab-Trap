# Sets the entity's id to the current id
scoreboard players operation $current OtcFishingCrabTrapId = @s OtcFishingCrabTrapId

# Takes the player's UUID from storage
execute if score $differs otcInteract matches 1 run data modify storage otc_interact:player verify set from storage otc_interact:player UUID

# Checks if the player's UUID is the same as the one stored in the interaction entity
execute if score $differs otcInteract matches 1 store success score $differs otcInteract run data modify storage otc_interact:player verify set from entity @s interaction.player

# Runs the reward function if the UUID matches 
execute if score $differs otcInteract matches 0 if entity @s[tag=OtcCrabTrapNotReady,tag=!OtcCrabTrapReady] run function otc_crab_trap:brain/removal/remove
execute if score $differs otcInteract matches 0 if entity @s[tag=OtcCrabTrapReady,tag=!OtcCrabTrapNotReady] run function otc_crab_trap:brain/removal/reward

# Removes the UUID from the interaction entity 
data remove entity @s interaction
