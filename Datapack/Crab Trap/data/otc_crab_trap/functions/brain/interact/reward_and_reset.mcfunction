# Sets the id of the crab trap to $current to match id's
scoreboard players operation $current OtcFishingCrabTrapId = @s OtcFishingCrabTrapId

loot spawn ~ ~ ~ loot otc_crab_trap:crab_trap
function otc_crab_trap:brain/visuals_and_audio/interact

# Sound
playsound item.axe.scrape master @a ~ ~ ~ .3 1

# Removes the "filled" crab trap model / replaces it with "empty" model
execute as @e[tag=OtcFishingCrabTrabCatch,predicate=otc_crab_trap:match_score_crab_trap] at @s run function otc_crab_trap:model/remove/this
function otc_crab_trap:model/summon/empty

execute as @e[tag=OtcFishingCrabTrab,tag=!otc_fishing_id,limit=1,sort=nearest] run function otc_crab_trap:brain/assign_model_id

# Removes the "ready" tag replacing it with the "not_ready"
tag @s remove OtcCrabTrapReady
tag @s add OtcCrabTrapNotReady
