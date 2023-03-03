# Generates the newest id
execute store result score @s OtcFishingCrabTrapId run scoreboard players add $max OtcFishingCrabTrapId 1

# Gives the crab_trap (model) the id
scoreboard players operation @e[tag=otc_fishing_crab_trap,tag=!otc_fishing_id,limit=1,sort=nearest] OtcFishingCrabTrapId = @s OtcFishingCrabTrapId

# Gives the interaction entity the id
scoreboard players operation @e[tag=otc_fishing_crab_trap_click,tag=!otc_fishing_id,limit=1,sort=nearest] OtcFishingCrabTrapId = @s OtcFishingCrabTrapId

# Tags self to avoid repeat id give
tag @s add otc_fishing_id

# Generates random time 
function otc_fishing:crab_trap/rng/generate_time