scoreboard objectives add OtcFishingAnimation dummy
scoreboard objectives add OtcFishingTimer dummy
scoreboard objectives add OtcFishingTimerDay dummy
scoreboard objectives add OtcFishingTimerCurrent dummy
scoreboard objectives add OtcFishingUsedCrabTrap minecraft.used:cod_spawn_egg
scoreboard objectives add OtcFishingCrabTrapId dummy
scoreboard objectives add OtcFishingCast dummy

execute unless score $temp OtcFishingAnimation matches 1 run function crab_trap:install

function otc_fishing:tick
function otc_fishing:loop

