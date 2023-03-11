# Give data
data merge entity @s {width:1f,height:1f,response:1b,Tags:["OtcCrabTrapInteraction","OtcCrabTrapNotReady"]}

# Generates the newest id
execute store result score @s OtcFishingCrabTrapId run scoreboard players add $max OtcFishingCrabTrapId 1

# Gives the crab_trap (model) the id
scoreboard players operation @e[tag=OtcFishingCrabTrab,tag=!otc_fishing_id,limit=1,sort=nearest] OtcFishingCrabTrapId = @s OtcFishingCrabTrapId

# Tags self to avoid repeat id give
tag @s add otc_fishing_id
tag @e[tag=!otc_fishing_id,tag=OtcFishingCrabTrab,predicate=otc_crab_trap:match_score_crab_trap] add otc_fishing_id

# Generates random time 
function otc_crab_trap:brain/rng/generate_time

scoreboard players set @s OtcFishingSleep 0
