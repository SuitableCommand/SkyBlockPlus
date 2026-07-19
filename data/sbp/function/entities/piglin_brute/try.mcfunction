tag @s add mob_modifiers_processed
data merge storage minecraft:math {random:{min:1,max:100}}
function math:random with storage minecraft:math random
execute if score #random constant <= #piglin_brute_conversion_chance constant if predicate sbp:in_bastion run function sbp:entities/piglin_brute/swap
