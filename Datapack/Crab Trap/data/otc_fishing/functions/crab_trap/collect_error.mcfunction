# Error message

tellraw @s {"text":"hmm this crab trap is empty\nmaybe I should check back later","italic":true}

execute at @e[tag=otc_fishing_not_ready] unless data entity @s Player{} run playsound block.wooden_trapdoor.close master @a ~ ~ ~ .07 1.3

advancement revoke @s only otc_fishing:crab_trap/interact_not_ready

