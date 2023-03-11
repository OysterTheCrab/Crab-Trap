# Crafting

recipe take @s otc_crab_trap:crab_trap
advancement revoke @s only otc_crab_trap:recipes/crab_trap
clear @s knowledge_book


give @s cod_spawn_egg{display:{Name:'{"text":"Crab Trap","italic":false}'},HideFlags:127,CustomModelData:800000,isCrabTrap:'true',EntityTag:{Silent:1b,NoAI:1b,Tags:["OtcCrabTrapSpawn"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:25000,ShowParticles:0b}]}} 1

