data merge storage minecraft:math {random:{min:1,max:2}}
function math:random with storage minecraft:math random

execute if score #random constant matches 1 run data modify entity @s Offers.Recipes append value {maxUses:1,sell:{count:1,id:"minecraft:silence_armor_trim_smithing_template"},buy:{count:1,id:"minecraft:cobbled_deepslate"},buyB:{count:7,id:"minecraft:diamond"},xp:30}
execute if score #random constant matches 2 run data modify entity @s Offers.Recipes append value {maxUses:1,sell:{count:1,id:"minecraft:ward_armor_trim_smithing_template"},buy:{count:1,id:"minecraft:cobbled_deepslate"},buyB:{count:7,id:"minecraft:diamond"},xp:30}
