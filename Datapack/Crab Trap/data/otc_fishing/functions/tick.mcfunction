schedule function otc_fishing:tick 1t replace


# Crab Trap
execute as @e[type=cod,tag=otc_fishing_crab_trap_spawn] at @s if block ~ ~ ~ #otc_fishing:water if block ~ ~-1 ~ #otc_fishing:non_water_blocks run function otc_fishing:crab_trap/setup
execute as @e[type=cod,tag=otc_fishing_crab_trap_spawn] at @s unless block ~ ~ ~ #otc_fishing:water run function otc_fishing:crab_trap/error
execute as @e[type=cod,tag=otc_fishing_crab_trap_spawn] at @s if entity @e[tag=otc_fishing_crab_trap_track,distance=..0.01] run function otc_fishing:crab_trap/error

execute as @e[tag=otc_fishing_crab_trap_track,tag=otc_fishing_id] run function otc_fishing:crab_trap/check
