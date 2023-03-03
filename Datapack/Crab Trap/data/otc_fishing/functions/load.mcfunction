
scoreboard objectives add OtcFishingTimer dummy
scoreboard objectives add OtcFishingUsedCrabTrap minecraft.used:cod_spawn_egg
scoreboard objectives add OtcFishingCrabTrapId dummy
scoreboard objectives add OtcFishingCast dummy
scoreboard objectives add OtcFishingAnimation dummy
scoreboard objectives add OtcFishingSleep dummy


execute unless score $temp OtcFishingAnimation matches 1 run function crab_trap:install

function otc_fishing:tick
function otc_fishing:loop


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