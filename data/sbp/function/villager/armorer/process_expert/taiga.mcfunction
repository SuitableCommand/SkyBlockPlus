tag @s add processed_expert

## set first trade

data merge storage minecraft:math {random:{min:1,max:2}}
function math:random with storage minecraft:math random

execute if score #random constant matches 1 run data modify entity @s Offers.Recipes[6] set value {maxUses:16,sell:{count:1,id:"minecraft:diamond_helmet"},buy:{count:2,id:"minecraft:emerald"},buyB:{count:1,id:"minecraft:diamond_chestplate"},xp:20}
execute if score #random constant matches 2 run data modify entity @s Offers.Recipes[6] set value {maxUses:16,sell:{count:1,id:"minecraft:diamond_chestplate"},buy:{count:4,id:"minecraft:emerald"},buyB:{count:1,id:"minecraft:diamond_leggings"},xp:20}

## set second trade

data merge storage minecraft:math {random:{min:1,max:2}}
function math:random with storage minecraft:math random

execute if score #random constant matches 1 run data modify entity @s Offers.Recipes[7] set value {maxUses:16,sell:{count:1,id:"minecraft:diamond_leggings"},buy:{count:4,id:"minecraft:emerald"},buyB:{count:1,id:"minecraft:diamond_boots"},xp:20}
execute if score #random constant matches 2 run data modify entity @s Offers.Recipes[7] set value {maxUses:16,sell:{count:1,id:"minecraft:diamond_boots"},buy:{count:4,id:"minecraft:emerald"},buyB:{count:1,id:"minecraft:diamond_helmet"},xp:20}
