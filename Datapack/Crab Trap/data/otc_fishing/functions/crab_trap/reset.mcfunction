playsound item.axe.scrape master @a ~ ~ ~ .3 1
scoreboard players operation $current OtcFishingCrabTrapId = @s OtcFishingCrabTrapId
execute as @e[tag=otc_fishing_crab_trap_catch,predicate=otc_fishing:match_score_crab_trap] at @s run function crab_trap:remove/this
function crab_trap:summon/empty
scoreboard players operation @e[tag=otc_fishing_crab_trap,sort=nearest,limit=1] OtcFishingCrabTrapId = $current OtcFishingCrabTrapId
tag @s remove otc_fishing_ready
tag @s add otc_fishing_not_ready
