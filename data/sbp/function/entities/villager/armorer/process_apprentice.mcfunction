tag @s add processed_apprentice

data modify storage minecraft:skyblock_plus math.rotate set value {namespace:"minecraft:skyblock_plus",path:"villager.armorer.apprentice"}
function math:rotate/start with storage minecraft:skyblock_plus math.rotate
data modify entity @s Offers.Recipes[2] set from storage minecraft:math rotate.list[0]
data remove storage minecraft:math rotate.list[0]

data modify storage minecraft:skyblock_plus math.rotate set value {namespace:"minecraft:math",path:"rotate.list"}
function math:rotate/start with storage minecraft:skyblock_plus math.rotate
data modify entity @s Offers.Recipes[3] set from storage minecraft:math rotate.list[0]
data remove storage minecraft:math rotate.list[0]
