#Project generated by Animated Java (https://animated-java.dev/)

scoreboard players operation .this aj.id = @s aj.id
scoreboard players operation .this aj.frame = @s aj.frame
execute rotated ~ 0 as @e[type=#crab_trap:bone_entities,tag=aj.crab_trapCrabTrap.bone,distance=..2.014] if score @s aj.id = .this aj.id run function crab_trap:animations/crab.empty/tree/trunk
scoreboard players operation @s aj.frame += .aj.crab_trap.framerate aj.i
scoreboard players set .aj.animation aj.crab_trap.animating 1
execute unless score @s aj.frame matches 0..2 run function crab_trap:animations/crab.empty/edge