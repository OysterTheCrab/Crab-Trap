#Project generated by Animated Java (https://animated-java.dev/)

execute if entity @s[tag=aj.crab_trap.anim.crab.move] at @s run function crab_trap:animations/crab.move/next_frame
execute if entity @s[tag=aj.crab_trap.anim.crab.empty] at @s run function crab_trap:animations/crab.empty/next_frame
scoreboard players operation @s aj.crab_trap.animating = .aj.animation aj.crab_trap.animating