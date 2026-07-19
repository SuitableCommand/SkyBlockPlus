place template sbp:starting_island -4 64 -4
tp @a 0 66 0

execute if block 0 64 0 minecraft:grass_block run data merge storage minecraft:skyblock_plus {worldgen:{starter_island:"done"}}
