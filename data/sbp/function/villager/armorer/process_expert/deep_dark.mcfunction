tag @s add processed_expert

## set first trade

data merge storage minecraft:math {random:{min:1,max:2}}
function math:random with storage minecraft:math random

execute if score #random constant matches 1 run data modify entity @s Offers.Recipes[6] set value {maxUses:16,sell:{count:1,id:"minecraft:iron_helmet",components:{"minecraft:enchantments":{"minecraft:vanishing_curse":1}}},buy:{count:3,id:"minecraft:emerald"},xp:20}
execute if score #random constant matches 2 run data modify entity @s Offers.Recipes[6] set value {maxUses:16,sell:{count:1,id:"minecraft:iron_chestplate",components:{"minecraft:enchantments":{"minecraft:vanishing_curse":1}}},buy:{count:7,id:"minecraft:emerald"},xp:20}

## set second trade

data merge storage minecraft:math {random:{min:1,max:2}}
function math:random with storage minecraft:math random

execute if score #random constant matches 1 run data modify entity @s Offers.Recipes[7] set value {maxUses:16,sell:{count:1,id:"minecraft:iron_leggings",components:{"minecraft:enchantments":{"minecraft:vanishing_curse":1}}},buy:{count:5,id:"minecraft:emerald"},xp:20}
execute if score #random constant matches 2 run data modify entity @s Offers.Recipes[7] set value {maxUses:16,sell:{count:1,id:"minecraft:iron_boots",components:{"minecraft:enchantments":{"minecraft:vanishing_curse":1}}},buy:{count:2,id:"minecraft:emerald"},xp:20}
