summon minecraft:cave_spider ~ ~ ~
tp @s ~ -255 ~

# check for weaving

data merge storage minecraft:math {random:{min:1,max:100}}
function math:random with storage minecraft:math random

execute if score #random constant <= #cave_spider_weaving_chance constant run effect give @e[type=cave_spider,limit=1,sort=nearest] weaving infinite 0
