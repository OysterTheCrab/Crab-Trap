
# Sets the id of the crab trap to $current to check id's
scoreboard players operation $current OtcFishingCrabTrapId = @s OtcFishingCrabTrapId

# Removes the "empty" model and replaces it with the "filled" model
execute as @e[tag=OtcFishingCrabTrab,predicate=otc_crab_trap:match_score_crab_trap] at @s run function otc_crab_trap:model/remove/this
function otc_crab_trap:model/summon/caught

# Assigns the new model the proper id
execute as @e[tag=OtcFishingCrabTrabCatch,tag=!otc_fishing_id,limit=1,sort=nearest] run function otc_crab_trap:brain/assign_model_id

# Starts the animation on the "filled" model
execute as @e[tag=OtcFishingCrabTrabCatch,predicate=otc_crab_trap:match_score_crab_trap] at @s run function otc_crab_trap:model/animations/crab.move/play

# Removes the "not_ready" tag from the interaction entity and replaces it with the "ready" tag
tag @s remove OtcCrabTrapNotReady
tag @s add OtcCrabTrapReady

# Resets the sleep check system
scoreboard players set @s OtcFishingSleep 1 

