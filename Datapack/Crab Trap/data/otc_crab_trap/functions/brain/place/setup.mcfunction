# Summons the "empty" model
function otc_crab_trap:model/summon/empty

# Aligns the summon entity
execute as @e[tag=OtcFishingCrabTrab,tag=!otc_fishing_id] at @s facing 0 0 0 run tp @s ~ ~ ~ ~ ~

# Summons the iteraction entity
execute summon interaction run function otc_crab_trap:brain/place/id


# Sound
playsound entity.fishing_bobber.splash master @a ~ ~ ~ .08 1.5

# Removes the summoning entity
tp @s ~ ~-1000 ~
