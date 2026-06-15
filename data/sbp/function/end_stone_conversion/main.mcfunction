execute as @e[type=minecraft:area_effect_cloud] if data entity @s {custom_particle:{type:"minecraft:dragon_breath"}} at @s positioned ~ ~-1 ~ run function sbp:end_stone_conversion/attempt
