# Sets the id of the crab trap to $current to match id's
scoreboard players operation $current OtcFishingCrabTrapId = @s OtcFishingCrabTrapId

# Removes the "empty" model and replaces it with the "filled" model
function crab_trap:remove/this
function crab_trap:summon/caught

# Gives the "filled" model the proper id
scoreboard players operation @e[tag=otc_fishing_crab_trap_catch,sort=nearest] OtcFishingCrabTrapId = $current OtcFishingCrabTrapId

# Starts the animation on the "filled" model
execute as @e[tag=otc_fishing_crab_trap_catch,predicate=otc_fishing:match_score_crab_trap] at @s run function crab_trap:animations/crab.move/play

# Removes the "not_ready" tag from the interaction entity and replaces it with the "ready" tag
tag @e[predicate=otc_fishing:match_score_crab_trap,limit=1] remove otc_fishing_not_ready
tag @e[tag=otc_fishing_crab_trap_click,predicate=otc_fishing:match_score_crab_trap,limit=1] add otc_fishing_ready

# Resets the sleep check system
scoreboard players set $check OtcFishingSleep 1 
