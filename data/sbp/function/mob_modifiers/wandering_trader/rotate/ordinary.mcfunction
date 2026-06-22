data modify storage minecraft:skyblock_plus wandering_trader.ordinary append from storage minecraft:skyblock_plus wandering_trader.ordinary[0]
data remove storage minecraft:skyblock_plus wandering_trader.ordinary[0]
scoreboard players remove #random constant 1
execute if score #random constant matches 1.. run function sbp:mob_modifiers/wandering_trader/rotate/ordinary
