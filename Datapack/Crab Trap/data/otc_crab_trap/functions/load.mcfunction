# Stores current daytime and rng time for the crab trap
scoreboard objectives add OtcFishingTimer dummy

# Checks when the player places the crab trap
scoreboard objectives add OtcFishingUsedCrabTrap minecraft.used:cod_spawn_egg

# Specical id that links all the parts of the crab trap
scoreboard objectives add OtcFishingCrabTrapId dummy

# Scoreboard for the animation
scoreboard objectives add OtcFishingAnimation dummy

# Scoreboard that tracks when a player sleeps as well as other criterion in relation
scoreboard objectives add OtcFishingSleep dummy

# Sets up the animation
execute unless score $temp OtcFishingAnimation matches 1 run function otc_crab_trap:model/install

# Interaction match check
scoreboard objectives add otcInteract dummy

# Starts the tick and storage loops
function otc_crab_trap:tick
function otc_crab_trap:loop
function otc_crab_trap:brain/visuals_and_audio/loop/choose


## Everything below is for rng

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





