#Project generated by Animated Java (https://animated-java.dev/)

scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.frame dummy
scoreboard objectives add aj.crab_trap.animating dummy
scoreboard objectives add aj.crab_trap.crab.move.loopMode dummy
scoreboard objectives add aj.crab_trap.crab.empty.loopMode dummy
function crab_trap:reset_animation_flags
scoreboard players set #uninstall aj.i 0
scoreboard players set .aj.crab_trap.framerate aj.i 1
tellraw @a [{"text":"[ ","color":"dark_gray"},{"text":"AJ","color":"aqua"},{"text":" → ","color":"gray"},{"text":"Install ⊻","color":"green"},{"text":" ]","color":"dark_gray"},"\n",{"text":"Installed ","color":"gray"},{"text":"armor_stand","color":"gold"},{"text":" rig.","color":"gray"},"\n",{"text":"◘ ","color":"gray"},{"text":"Included Scoreboard Objectives:","color":"green"},"\n",{"text":"   ◘ ","color":"gray"},{"text":"aj.i","color":"aqua"},{"text":" (Internal)","color":"dark_gray"},"\n",{"text":"   ◘ ","color":"gray"},{"text":"aj.id","color":"aqua"},{"text":" (ID)","color":"dark_gray"},"\n",{"text":"   ◘ ","color":"gray"},{"text":"aj.frame","color":"aqua"},{"text":" (Frame)","color":"dark_gray"},"\n",{"text":"   ◘ ","color":"gray"},{"text":"aj.crab_trap.animating","color":"aqua"},{"text":" (Animation Flag)","color":"dark_gray"},[["\n",{"text":"   ◘ ","color":"gray"},{"text":"aj.crab_trap.crab.move.loopMode","color":"aqua"},{"text":" (Loop Mode)","color":"dark_gray"}],["\n",{"text":"   ◘ ","color":"gray"},{"text":"aj.crab_trap.crab.empty.loopMode","color":"aqua"},{"text":" (Loop Mode)","color":"dark_gray"}]]]