tag @s add processed_master

data modify storage minecraft:skyblock_plus math.spin set value {namespace:"minecraft:skyblock_plus",path:"villager.mason.master"}
function math:spin/start with storage minecraft:skyblock_plus math.spin

data modify entity @s Offers.Recipes append from storage minecraft:math spin.list[0]
