schedule function otc_fishing:tick 1t replace

# Invisible minecart setup
execute as @e[type=#otc_fishing:minecarts,tag=!invisible_minecart] run function otc_fishing:tacklebox/gui/minecart

# Check when player is/ isn't holding a tacklebox
execute as @a[predicate=otc_fishing:tacklebox/holding_tacklebox,tag=!otc_fishing_holding_tacklebox] at @s run function otc_fishing:tacklebox/gui/summon
execute as @a[predicate=!otc_fishing:tacklebox/holding_tacklebox,tag=otc_fishing_holding_tacklebox] at @s run function otc_fishing:tacklebox/gui/reset_gui
execute as @a[tag=otc_fishing_holding_tacklebox] at @s run function otc_fishing:tacklebox/gui/check_color

# Tp minecart to player
execute as @a[tag=otc_fishing_holding_tacklebox] at @s run tp @e[tag=otc_fishing_gui,limit=1,sort=nearest] ~ ~1 ~

# Check GUI slots
execute as @e[tag=otc_fishing_gui,type=chest_minecart] at @s if entity @a[dx=0,tag=otc_fishing_opened_gui] run function otc_fishing:tacklebox/gui/check_slots

# Check for color change
execute as @a[tag=otc_fishing_holding_tacklebox] unless score @s OtcFishingtTackleBox.color.new = @s OtcFishingTackleBox.color.now run function otc_fishing:tacklebox/gui/change_color

# Check if player is no longer in GUI
execute as @a[tag=otc_fishing_opened_gui,tag=!otc_fishing_stored_rotation] run function otc_fishing:tacklebox/gui/close_gui/init

# Tp hitbox block to fishing player
execute as @a[tag=otc_fishing] at @s run tp @e[type=villager,tag=OtcFishingReel,limit=1,sort=nearest] ^ ^ ^1.3

# Check for caught fish 
execute as @e[type=fishing_bobber,tag=!OtcFishingLoop] at @s if block ~ ~ ~ water run function otc_fishing:fishing/bobber/init

# Check if player is fishing
execute as @a[scores={OtcFishingCastLine=1..}] at @s run function otc_fishing:fishing/match_id
tag @a[predicate=!otc_fishing:holding_rod,tag=otc_fishing] remove otc_fishing

# Eel shock system
execute as @a[predicate=otc_fishing:holding_eel_mainhand,tag=!otc_fishing_eel_mainhand] run function otc_fishing:fishing/mythic/eel_mainhand
tag @a[predicate=!otc_fishing:holding_eel_mainhand,tag=otc_fishing_eel_mainhand] remove otc_fishing_eel_mainhand

execute as @a[predicate=otc_fishing:holding_eel_offhand,tag=!otc_fishing_eel_offhand] run function otc_fishing:fishing/mythic/eel_offhand
tag @a[predicate=!otc_fishing:holding_eel_offhand,tag=otc_fishing_eel_offhand] remove otc_fishing_eel_offhand

ride @e[type=minecraft:fishing_bobber,limit=1,predicate=otc_fishing:match_score] mount @e[type=item,sort=nearest,limit=1,tag=otc_fishing_new_item]

# Crab Trap
execute as @e[type=cod,tag=otc_fishing_crab_trap_spawn] at @s if block ~ ~ ~ #otc_fishing:water if block ~ ~-1 ~ #otc_fishing:non_water_blocks run function otc_fishing:crab_trap/setup
execute as @e[type=cod,tag=otc_fishing_crab_trap_spawn] at @s unless block ~ ~ ~ #otc_fishing:water run function otc_fishing:crab_trap/error
execute as @e[type=cod,tag=otc_fishing_crab_trap_spawn] at @s if entity @e[tag=otc_fishing_crab_trap_track,distance=..0.01] run function otc_fishing:crab_trap/error
execute as @e[tag=otc_fishing_crab_trap_track,tag=otc_fishing_id] run function otc_fishing:crab_trap/check
execute if score $day OtcFishingSleep matches 1 if score $sleep OtcFishingSleep matches 1 run scoreboard players set $sleep OtcFishingSleep 0
execute if score $day OtcFishingSleep matches 1 if score $check OtcFishingSleep matches 1 run scoreboard players set $check OtcFishingSleep 0