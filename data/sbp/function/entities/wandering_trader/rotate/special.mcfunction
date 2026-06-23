data modify storage minecraft:skyblock_plus wandering_trader.special append from storage minecraft:skyblock_plus wandering_trader.special[0]
data remove storage minecraft:skyblock_plus wandering_trader.special[0]
scoreboard players remove #random constant 1
execute if score #random constant matches 1.. run function sbp:entities/wandering_trader/rotate/special
