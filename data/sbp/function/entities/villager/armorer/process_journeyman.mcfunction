tag @s add processed_journeyman

data modify storage minecraft:skyblock_plus math.spin set value {namespace:"minecraft:skyblock_plus",path:"villager.armorer.journeyman"}
function math:spin/start with storage minecraft:skyblock_plus math.spin
data modify entity @s Offers.Recipes[4] set from storage minecraft:math spin.list[0]
data remove storage minecraft:math spin.list[0]

data modify storage minecraft:skyblock_plus math.spin set value {namespace:"minecraft:math",path:"spin.list"}
function math:spin/start with storage minecraft:skyblock_plus math.spin
data modify entity @s Offers.Recipes[5] set from storage minecraft:math spin.list[0]
data remove storage minecraft:math spin.list[0]
