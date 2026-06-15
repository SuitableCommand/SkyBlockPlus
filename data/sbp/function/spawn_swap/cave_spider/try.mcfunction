data merge storage minecraft:math {random:{min:1,max:100}}
function math:random with storage minecraft:math random

execute as @s[y=0,dy=-64] if score #random constant <= #cave_spider_swap_chance constant run function sbp:spawn_swap/cave_spider/swap
tag @s add not_cave_spider
