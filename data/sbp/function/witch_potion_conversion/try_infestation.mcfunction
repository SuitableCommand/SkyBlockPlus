data merge storage minecraft:math {random:{min:1,max:100}}
function math:random with storage minecraft:math random

execute if score #random constant <= #witch_potion_conversion_infestation_chance constant run data merge entity @s {Item:{components:{"minecraft:potion_contents":{potion:"minecraft:infested"}}}}
