tag @s add processed_expert

## set trades

function math:generate_random

execute if score #random constant matches 001..033 run data modify entity @s Offers.Recipes[6] set value {maxUses:12,sell:{count:1,id:"minecraft:emerald"},buy:{count:2,id:"minecraft:writable_book"},xp:30}
execute if score #random constant matches 001..033 run data modify entity @s Offers.Recipes[7] set value {maxUses:12,sell:{count:1,id:"minecraft:clock"},buy:{count:5,id:"minecraft:emerald"},xp:15}

execute if score #random constant matches 034..066 run data modify entity @s Offers.Recipes[6] set value {maxUses:12,sell:{count:1,id:"minecraft:emerald"},buy:{count:2,id:"minecraft:writable_book"},xp:30}
execute if score #random constant matches 034..066 run data modify entity @s Offers.Recipes[7] set value {maxUses:12,sell:{count:1,id:"minecraft:compass"},buy:{count:4,id:"minecraft:emerald"},xp:15}

execute if score #random constant matches 067..100 run data modify entity @s Offers.Recipes[6] set value {maxUses:12,sell:{count:1,id:"minecraft:clock"},buy:{count:5,id:"minecraft:emerald"},xp:15}
execute if score #random constant matches 067..100 run data modify entity @s Offers.Recipes[7] set value {maxUses:12,sell:{count:1,id:"minecraft:compass"},buy:{count:4,id:"minecraft:emerald"},xp:15}
