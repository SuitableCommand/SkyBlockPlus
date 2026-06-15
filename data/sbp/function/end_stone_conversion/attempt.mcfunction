data merge storage minecraft:math {random:{min:1,max:100}}
function math:random with storage minecraft:math random
execute if score #random constant <= #cobblestone_to_end_stone_conversion_chance constant run function sbp:end_stone_conversion/convert_block
