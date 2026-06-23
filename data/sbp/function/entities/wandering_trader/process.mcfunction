data modify storage minecraft:skyblock_plus wandering_trader.Offers set value []

# trade slot 1
data merge storage minecraft:math {random:{min:1,max:6}}
function math:random with storage minecraft:math random
function sbp:entities/wandering_trader/rotate/purchase
data modify storage minecraft:skyblock_plus wandering_trader.Offers append from storage minecraft:skyblock_plus wandering_trader.purchase[0]
data remove storage minecraft:skyblock_plus wandering_trader.purchase[0]

# trade slot 2
data merge storage minecraft:math {random:{min:1,max:5}}
function math:random with storage minecraft:math random
function sbp:entities/wandering_trader/rotate/purchase
data modify storage minecraft:skyblock_plus wandering_trader.Offers append from storage minecraft:skyblock_plus wandering_trader.purchase[0]
data remove storage minecraft:skyblock_plus wandering_trader.purchase[0]

# trade slot 3
data merge storage minecraft:math {random:{min:1,max:15}}
function math:random with storage minecraft:math random
function sbp:entities/wandering_trader/rotate/special
data modify storage minecraft:skyblock_plus wandering_trader.Offers append from storage minecraft:skyblock_plus wandering_trader.special[0]
data remove storage minecraft:skyblock_plus wandering_trader.special[0]

# trade slot 4
data merge storage minecraft:math {random:{min:1,max:14}}
function math:random with storage minecraft:math random
function sbp:entities/wandering_trader/rotate/special
data modify storage minecraft:skyblock_plus wandering_trader.Offers append from storage minecraft:skyblock_plus wandering_trader.special[0]
data remove storage minecraft:skyblock_plus wandering_trader.special[0]

# trade slot 5
data merge storage minecraft:math {random:{min:1,max:75}}
function math:random with storage minecraft:math random
function sbp:entities/wandering_trader/rotate/ordinary
data modify storage minecraft:skyblock_plus wandering_trader.Offers append from storage minecraft:skyblock_plus wandering_trader.ordinary[0]
data remove storage minecraft:skyblock_plus wandering_trader.ordinary[0]

# trade slot 6
data merge storage minecraft:math {random:{min:1,max:74}}
function math:random with storage minecraft:math random
function sbp:entities/wandering_trader/rotate/ordinary
data modify storage minecraft:skyblock_plus wandering_trader.Offers append from storage minecraft:skyblock_plus wandering_trader.ordinary[0]
data remove storage minecraft:skyblock_plus wandering_trader.ordinary[0]

# trade slot 7
data merge storage minecraft:math {random:{min:1,max:73}}
function math:random with storage minecraft:math random
function sbp:entities/wandering_trader/rotate/ordinary
data modify storage minecraft:skyblock_plus wandering_trader.Offers append from storage minecraft:skyblock_plus wandering_trader.ordinary[0]
data remove storage minecraft:skyblock_plus wandering_trader.ordinary[0]

# trade slot 8
data merge storage minecraft:math {random:{min:1,max:72}}
function math:random with storage minecraft:math random
function sbp:entities/wandering_trader/rotate/ordinary
data modify storage minecraft:skyblock_plus wandering_trader.Offers append from storage minecraft:skyblock_plus wandering_trader.ordinary[0]
data remove storage minecraft:skyblock_plus wandering_trader.ordinary[0]

# trade slot 9
data merge storage minecraft:math {random:{min:1,max:71}}
function math:random with storage minecraft:math random
function sbp:entities/wandering_trader/rotate/ordinary
data modify storage minecraft:skyblock_plus wandering_trader.Offers append from storage minecraft:skyblock_plus wandering_trader.ordinary[0]
data remove storage minecraft:skyblock_plus wandering_trader.ordinary[0]

# update wandering trader offers
data modify entity @s Offers.Recipes set from storage minecraft:skyblock_plus wandering_trader.Offers
tag @s add mob_modifiers_processed

# reset wandering trader options
data modify storage minecraft:skyblock_plus wandering_trader.purchase append from storage minecraft:skyblock_plus wandering_trader.Offers[0]
data modify storage minecraft:skyblock_plus wandering_trader.purchase append from storage minecraft:skyblock_plus wandering_trader.Offers[1]
data modify storage minecraft:skyblock_plus wandering_trader.special append from storage minecraft:skyblock_plus wandering_trader.Offers[2]
data modify storage minecraft:skyblock_plus wandering_trader.special append from storage minecraft:skyblock_plus wandering_trader.Offers[3]
data modify storage minecraft:skyblock_plus wandering_trader.ordinary append from storage minecraft:skyblock_plus wandering_trader.Offers[4]
data modify storage minecraft:skyblock_plus wandering_trader.ordinary append from storage minecraft:skyblock_plus wandering_trader.Offers[5]
data modify storage minecraft:skyblock_plus wandering_trader.ordinary append from storage minecraft:skyblock_plus wandering_trader.Offers[6]
data modify storage minecraft:skyblock_plus wandering_trader.ordinary append from storage minecraft:skyblock_plus wandering_trader.Offers[7]
data modify storage minecraft:skyblock_plus wandering_trader.ordinary append from storage minecraft:skyblock_plus wandering_trader.Offers[8]
