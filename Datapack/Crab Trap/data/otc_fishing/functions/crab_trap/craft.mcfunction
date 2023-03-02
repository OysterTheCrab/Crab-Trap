recipe take @s otc_fishing:crab_trap
advancement revoke @s only otc_fishing:recipes/crab_trap
clear @s knowledge_book

give @s cod_spawn_egg{display:{Name:'{"text":"Crab Trap","italic":false}'},HideFlags:127,CustomModelData:800000,isCrabTrap:'true',EntityTag:{Silent:1b,NoAI:1b,Tags:["otc_fishing_crab_trap_spawn"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:25000,ShowParticles:0b}]}} 1