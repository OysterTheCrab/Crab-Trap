forceload add -30000000 1300
setblock -30000000 -55 1300 minecraft:yellow_shulker_box
scoreboard objectives add OtcFishingValue dummy
scoreboard objectives add OtcFishingRotation dummy
scoreboard objectives add OtcFishingRotationCheck dummy
scoreboard objectives add OtcFishingMovementCheck.Walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add OtcFishingMovementCheck.Sprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add OtcFishingCastLine minecraft.used:fishing_rod
scoreboard objectives add OtcFishingId dummy
scoreboard objectives add OtcFishingYMot dummy
scoreboard objectives add OtcFishingTackleBox.color.new dummy
scoreboard objectives add OtcFishingTackleBox.color.now dummy
scoreboard objectives add OtcFishingTimer dummy
scoreboard objectives add OtcFishingUsedCrabTrap minecraft.used:cod_spawn_egg
scoreboard objectives add OtcFishingCrabTrapId dummy
scoreboard objectives add OtcFishingCast dummy
scoreboard objectives add OtcFishingAnimation dummy
scoreboard objectives add OtcFishingSleep dummy

execute as @a[tag=!otc_fishing_credits] run function otc_fishing:credits

execute unless score $temp OtcFishingAnimation matches 1 run function crab_trap:install

function otc_fishing:tick
function otc_fishing:loop

setblock -30000000 -55 1300 oak_sign

forceload add 0 0 0 0


# Create scoreboard objective and initialise LCG
scoreboard objectives add random dummy
execute unless score #lcg random = #lcg random store result score #lcg random run seed

# Define constants
scoreboard players set #lcg_a random 1630111353
scoreboard players set #lcg_c random 1623164762
scoreboard players set #lcg_m random 2147483647


# Set Min and Max
scoreboard players set $min random 12000
scoreboard players set $max random 23000

scoreboard players set $check OtcFishingSleep 0