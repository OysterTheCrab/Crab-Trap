# Gives player the loot and resets the crab trap
advancement revoke @s only otc_crab_trap:interact
tag @s add otcInteracted

# Sets up the interaction check system
scoreboard players set $differs otcInteract 1

# Stores the player's UUID to storage 
data modify storage otc_interact:player UUID set from entity @s UUID

# Runs as all interaction entities that have been interacted with, within 10 blocks
execute as @e[type=interaction,nbt={interaction:{}},distance=..10] at @s run function otc_crab_trap:brain/interact/match

tag @s remove otcInteracted

