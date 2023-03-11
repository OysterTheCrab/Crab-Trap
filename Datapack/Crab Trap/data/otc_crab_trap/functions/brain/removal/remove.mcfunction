# Sets the id of the crab trap to $current to match id's
scoreboard players operation $current OtcFishingCrabTrapId = @s OtcFishingCrabTrapId

function otc_crab_trap:brain/visuals_and_audio/remove


# Removes the "filled" crab trap model / replaces it with "empty" model
execute as @e[tag=OtcFishingCrabTrab,predicate=otc_crab_trap:match_score_crab_trap] at @s run function otc_crab_trap:model/remove/this

summon item ~ ~ ~ {Item:{id:"minecraft:cod_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"Crab Trap","bold":false}'},HideFlags:127,CustomModelData:800000,isCrabTrap:'true',EntityTag:{Silent:1b,NoAI:1b,Tags:["OtcCrabTrapSpawn"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:25000,ShowParticles:0b}]}}}}

kill @s