#Project generated by Animated Java (https://animated-java.dev/)

schedule function crab_trap:animation_loop 1t
scoreboard players set .aj.anim_loop aj.crab_trap.animating 1
scoreboard players set .aj.animation aj.crab_trap.animating 0
execute as @e[type=minecraft:marker,tag=aj.crab_trap.root] run function crab_trap:zzz/execute/17
execute if score .aj.animation aj.crab_trap.animating matches 0 run function crab_trap:zzz/execute/18