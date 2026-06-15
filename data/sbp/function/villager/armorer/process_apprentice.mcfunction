tag @s add processed_apprentice

## set first trade

data merge storage minecraft:math {random:{min:1,max:2}}
function math:random with storage minecraft:math random

execute if score #random constant matches 1 run data modify entity @s Offers.Recipes[2] set value {maxUses:16,sell:{count:1,id:"minecraft:iron_helmet"},buy:{count:5,id:"minecraft:emerald"},xp:10}
execute if score #random constant matches 2 run data modify entity @s Offers.Recipes[2] set value {maxUses:16,sell:{count:1,id:"minecraft:iron_chestplate"},buy:{count:9,id:"minecraft:emerald"},xp:10}

## set second trade

data merge storage minecraft:math {random:{min:1,max:2}}
function math:random with storage minecraft:math random

execute if score #random constant matches 1 run data modify entity @s Offers.Recipes[3] set value {maxUses:16,sell:{count:1,id:"minecraft:iron_leggings"},buy:{count:7,id:"minecraft:emerald"},xp:10}
execute if score #random constant matches 2 run data modify entity @s Offers.Recipes[3] set value {maxUses:16,sell:{count:1,id:"minecraft:iron_boots"},buy:{count:4,id:"minecraft:emerald"},xp:10}
