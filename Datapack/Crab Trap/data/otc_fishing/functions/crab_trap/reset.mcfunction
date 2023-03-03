# Sets the id of the crab trap to $current to match id's
scoreboard players operation $current OtcFishingCrabTrapId = @s OtcFishingCrabTrapId

# Sound
playsound item.axe.scrape master @a ~ ~ ~ .3 1

# Removes the "filled" crab trap model / replaces it with "empty" model
execute as @e[tag=otc_fishing_crab_trap_catch,predicate=otc_fishing:match_score_crab_trap] at @s run function crab_trap:remove/this
function crab_trap:summon/empty

# Gives the "empty" model the proper id
scoreboard players operation @e[tag=otc_fishing_crab_trap,sort=nearest,limit=1] OtcFishingCrabTrapId = $current OtcFishingCrabTrapId

# Removes the "ready" tag replacing it with the "not_ready" tag
tag @s remove otc_fishing_ready
tag @s add otc_fishing_not_ready
