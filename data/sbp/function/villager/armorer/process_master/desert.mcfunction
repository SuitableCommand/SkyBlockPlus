tag @s add processed_master

data merge storage minecraft:math {random:{min:1,max:3}}
function math:random with storage minecraft:math random

## add first armor trade if applicable (case 1 and 2 of 3)
execute unless score #random constant matches 1 run data modify entity @s Offers.Recipes append value {maxUses:16,sell:{count:1,id:"minecraft:diamond_chestplate",components:{"minecraft:enchantments":{"minecraft:thorns":1}}},buy:{count:16,id:"minecraft:emerald"},buyB:{count:4,id:"minecraft:diamond"},xp:30}

## add second armor trade if applicable (case 2 and 3 of 3)
execute unless score #random constant matches 2 run data modify entity @s Offers.Recipes append value {maxUses:16,sell:{count:1,id:"minecraft:diamond_leggings",components:{"minecraft:enchantments":{"minecraft:thorns":1}}},buy:{count:16,id:"minecraft:emerald"},buyB:{count:3,id:"minecraft:diamond"},xp:30}

## add armor trim trade if applicable (case 1 and 3 of 3)
execute unless score #random constant matches 3 run data modify entity @s Offers.Recipes append value {maxUses:1,sell:{count:1,id:"minecraft:dune_armor_trim_smithing_template"},buy:{count:1,id:"minecraft:sandstone"},buyB:{count:7,id:"minecraft:diamond"},xp:30}
