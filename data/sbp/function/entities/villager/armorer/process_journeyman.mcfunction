tag @s add processed_journeyman

data modify storage minecraft:skyblock_plus math.rotate set value {namespace:"minecraft:skyblock_plus",path:"villager.armorer.journeyman"}
function math:rotate/start with storage minecraft:skyblock_plus math.rotate
data modify entity @s Offers.Recipes[4] set from storage minecraft:math rotate.list[0]
data remove storage minecraft:math rotate.list[0]

data modify storage minecraft:skyblock_plus math.rotate set value {namespace:"minecraft:math",path:"rotate.list"}
function math:rotate/start with storage minecraft:skyblock_plus math.rotate
data modify entity @s Offers.Recipes[5] set from storage minecraft:math rotate.list[0]
data remove storage minecraft:math rotate.list[0]
