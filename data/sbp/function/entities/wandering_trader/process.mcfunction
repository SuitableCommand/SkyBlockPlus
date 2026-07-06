data modify storage minecraft:skyblock_plus wandering_trader.Offers set value []

# purchase trades

# trade slot 1
data modify storage minecraft:skyblock_plus math.spin set value {namespace:"minecraft:skyblock_plus",path:"wandering_trader.purchase"}
function math:spin/start with storage minecraft:skyblock_plus math.spin
data modify storage minecraft:skyblock_plus wandering_trader.Offers append from storage minecraft:math spin.list[0]
data remove storage minecraft:math spin.list[0]

# trade slot 2
data modify storage minecraft:skyblock_plus math.spin set value {namespace:"minecraft:math",path:"spin.list"}
function math:spin/start with storage minecraft:skyblock_plus math.spin
data modify storage minecraft:skyblock_plus wandering_trader.Offers append from storage minecraft:math spin.list[0]
data remove storage minecraft:math spin.list[0]

# special trades

# trade slot 3
data modify storage minecraft:skyblock_plus math.spin set value {namespace:"minecraft:skyblock_plus",path:"wandering_trader.special"}
function math:spin/start with storage minecraft:skyblock_plus math.spin
data modify storage minecraft:skyblock_plus wandering_trader.Offers append from storage minecraft:math spin.list[0]
data remove storage minecraft:math spin.list[0]

# trade slot 4
data modify storage minecraft:skyblock_plus math.spin set value {namespace:"minecraft:math",path:"spin.list"}
function math:spin/start with storage minecraft:skyblock_plus math.spin
data modify storage minecraft:skyblock_plus wandering_trader.Offers append from storage minecraft:math spin.list[0]
data remove storage minecraft:math spin.list[0]

# ordinary trades

# trade slot 5
data modify storage minecraft:skyblock_plus math.spin set value {namespace:"minecraft:skyblock_plus",path:"wandering_trader.ordinary"}
function math:spin/start with storage minecraft:skyblock_plus math.spin
data modify storage minecraft:skyblock_plus wandering_trader.Offers append from storage minecraft:math spin.list[0]
data remove storage minecraft:math spin.list[0]

# trade slot 6
data modify storage minecraft:skyblock_plus math.spin set value {namespace:"minecraft:math",path:"spin.list"}
function math:spin/start with storage minecraft:skyblock_plus math.spin
data modify storage minecraft:skyblock_plus wandering_trader.Offers append from storage minecraft:math spin.list[0]
data remove storage minecraft:math spin.list[0]

# trade slot 7
data modify storage minecraft:skyblock_plus math.spin set value {namespace:"minecraft:math",path:"spin.list"}
function math:spin/start with storage minecraft:skyblock_plus math.spin
data modify storage minecraft:skyblock_plus wandering_trader.Offers append from storage minecraft:math spin.list[0]
data remove storage minecraft:math spin.list[0]

# trade slot 8
data modify storage minecraft:skyblock_plus math.spin set value {namespace:"minecraft:math",path:"spin.list"}
function math:spin/start with storage minecraft:skyblock_plus math.spin
data modify storage minecraft:skyblock_plus wandering_trader.Offers append from storage minecraft:math spin.list[0]
data remove storage minecraft:math spin.list[0]

# trade slot 9
data modify storage minecraft:skyblock_plus math.spin set value {namespace:"minecraft:math",path:"spin.list"}
function math:spin/start with storage minecraft:skyblock_plus math.spin
data modify storage minecraft:skyblock_plus wandering_trader.Offers append from storage minecraft:math spin.list[0]
data remove storage minecraft:math spin.list[0]

# update wandering trader offers

data modify entity @s Offers.Recipes set from storage minecraft:skyblock_plus wandering_trader.Offers
tag @s add mob_modifiers_processed
