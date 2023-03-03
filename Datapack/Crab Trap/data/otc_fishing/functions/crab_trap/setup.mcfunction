function crab_trap:summon/empty
execute as @e[tag=otc_fishing_crab_trap,tag=!otc_fishing_id] at @s facing 0 0 0 run tp @s ~ ~ ~ ~ ~
summon interaction ~ ~ ~ {width:1f,height:1f,response:1b,Tags:["otc_fishing_crab_trap_click","otc_fishing_not_ready"]}
summon marker ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["otc_fishing_crab_trap_track"]}
tp @s ~ ~-1000 ~
execute as @e[tag=!otc_fishing_id,tag=otc_fishing_crab_trap_track] run function otc_fishing:crab_trap/id
playsound entity.fishing_bobber.splash master @a ~ ~ ~ .08 1.5