#Project generated by Animated Java (https://animated-java.dev/)

tag @s remove aj.OtcFishingCrabTrab.anim.crab.move
tag @s remove aj.OtcFishingCrabTrab.anim.crab.empty
scoreboard players set @s aj.frame 0
scoreboard players operation .this aj.id = @s aj.id
execute as @e[type=minecraft:area_effect_cloud,tag=aj.OtcFishingCrabTrabCrabTrap.bone,distance=..3.727] if score @s aj.id = .this aj.id run function otc_crab_trap:model/zzz/execute/8
execute as @e[type=minecraft:armor_stand,tag=aj.OtcFishingCrabTrabCrabTrap.bone,distance=..3.727] if score @s aj.id = .this aj.id run function otc_crab_trap:model/zzz/execute/9
scoreboard players set #execute aj.i 1