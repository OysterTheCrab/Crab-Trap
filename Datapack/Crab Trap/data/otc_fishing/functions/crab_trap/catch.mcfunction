scoreboard players operation $current OtcFishingCrabTrapId = @s OtcFishingCrabTrapId
function crab_trap:remove/this
function crab_trap:summon/caught
scoreboard players operation @e[tag=otc_fishing_crab_trap,sort=nearest] OtcFishingCrabTrapId = $current OtcFishingCrabTrapId
execute as @e[tag=otc_fishing_crab_trap,predicate=otc_fishing:match_score_crab_trap] at @s run function crab_trap:animations/crab.move/play
tag @e[sort=nearest,limit=1] remove otc_fishing_not_ready
tag @e[tag=otc_fishing_crab_trap_click,sort=nearest,limit=1] add otc_fishing_ready
