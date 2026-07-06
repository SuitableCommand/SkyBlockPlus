execute as @s[tag=!unemployed] if data entity @s {VillagerData:{profession:"minecraft:none"}} run function sbp:entities/villager/unemploy
execute unless data entity @s {VillagerData:{profession:"minecraft:none"}} run function sbp:entities/villager/employ

execute as @s[tag=armorer] run function sbp:entities/villager/armorer/main
execute as @s[tag=mason] run function sbp:entities/villager/mason/main
