tag @s add processed

data merge storage minecraft:math {random:{min:1,max:100}}
function math:random with storage minecraft:math random

execute if score #random constant matches 001..045 run data modify entity @s Offers.Recipes append value {maxUses:12,sell:{count:1,id:"minecraft:sweet_berries"},buy:{count:1,id:"minecraft:emerald"}}
execute if score #random constant matches 046..090 run data modify entity @s Offers.Recipes append value {maxUses:12,sell:{count:1,id:"minecraft:glow_berries"},buy:{count:2,id:"minecraft:emerald"}}
execute if score #random constant matches 091..100 run data modify entity @s Offers.Recipes append value {maxUses:1,sell:{count:1,id:"minecraft:enchanted_golden_apple"},buy:{count:1,id:"minecraft:golden_apple"},buyB:{count:24,id:"minecraft:diamond"}}

data modify entity @s Offers.Recipes[{sell:{id:"minecraft:podzol"}}] set value {buy:{id:"minecraft:emerald",count:5},sell:{id:"minecraft:mycelium",count:1},maxUses:2}
data modify entity @s Offers.Recipes[{sell:{id:"minecraft:wheat_seeds"}}] set value {buy:{id:"minecraft:emerald",count:2},sell:{id:"minecraft:cocoa_beans",count:1},maxUses:2}
