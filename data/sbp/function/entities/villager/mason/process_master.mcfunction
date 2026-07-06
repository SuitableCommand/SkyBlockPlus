tag @s add processed_master

data modify storage minecraft:skyblock_plus math.rotate set value {namespace:"minecraft:skyblock_plus",path:"villager.mason.master"}
function math:rotate/start with storage minecraft:skyblock_plus math.rotate

data modify entity @s Offers.Recipes append from storage minecraft:math rotate.list[0]
