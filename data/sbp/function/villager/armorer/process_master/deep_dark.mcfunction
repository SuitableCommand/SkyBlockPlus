tag @s add processed_master

data merge storage minecraft:math {random:{min:1,max:3}}
function math:random with storage minecraft:math random

## add first armor trade if applicable (case 1 and 2 of 3)
execute unless score #random constant matches 1 run data modify entity @s Offers.Recipes append value {maxUses:16,sell:{count:1,id:"minecraft:diamond_helmet",components:{"minecraft:enchantments":{"minecraft:vanishing_curse":1}}},buy:{count:8,id:"minecraft:emerald"},buyB:{count:2,id:"minecraft:diamond"},xp:30}

## add second armor trade if applicable (case 2 and 3 of 3)
execute unless score #random constant matches 2 run data modify entity @s Offers.Recipes append value {maxUses:16,sell:{count:1,id:"minecraft:diamond_boots",components:{"minecraft:enchantments":{"minecraft:vanishing_curse":1}}},buy:{count:6,id:"minecraft:emerald"},buyB:{count:1,id:"minecraft:diamond"},xp:30}

## add armor trim trade if applicable (case 1 and 3 of 3)
execute unless score #random constant matches 3 run function sbp:villager/armorer/process_master/add_armor_trim_trade/deep_dark
