data merge storage minecraft:math {random:{min:1,max:100}}
function math:random with storage minecraft:math random
execute if score #random constant <= #cave_spider_weaving_chance constant run effect give @s weaving infinite 0 false

tag @s add mob_modifiers_processed
