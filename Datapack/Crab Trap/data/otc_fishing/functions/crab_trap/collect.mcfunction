loot give @s loot otc_fishing:crab_trap

execute as @e[tag=otc_fishing_ready] unless data entity @s Player{} at @s run function otc_fishing:crab_trap/reset
advancement revoke @s only otc_fishing:crab_trap/interact_ready
