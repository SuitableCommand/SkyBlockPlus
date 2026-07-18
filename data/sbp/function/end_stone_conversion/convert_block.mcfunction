# record dragon breath radius
execute store result score #dragon_breath_radius constant run data get entity @s Radius
scoreboard players remove #dragon_breath_radius constant 1

#define random number range
execute store result storage minecraft:math random.max int 1 run scoreboard players get #dragon_breath_radius constant
scoreboard players operation #dragon_breath_radius constant *= #negative_one constant
execute store result storage minecraft:math random.min int 1 run scoreboard players get #dragon_breath_radius constant

summon minecraft:marker ~ ~ ~ {Tags:["end_stone_converter"]}

#modify x coord
function math:random with storage minecraft:math random
execute store result score #temp constant run data get entity @s Pos[0] 1
scoreboard players operation #temp constant += #random constant
execute store result entity @e[tag=end_stone_converter,limit=1] Pos[0] float 1 run scoreboard players get #temp constant

# modify z coord
function math:random with storage minecraft:math random
execute store result score #temp constant run data get entity @s Pos[2] 1
scoreboard players operation #temp constant += #random constant
execute store result entity @e[tag=end_stone_converter,limit=1] Pos[2] float 1 run scoreboard players get #temp constant

execute as @e[tag=end_stone_converter,limit=1] at @s if block ~ ~ ~ #sbp:end_stone_convertable_blocks run advancement grant @a[distance=..10] only sbp:end/corrupting_breath
execute as @e[tag=end_stone_converter,limit=1] at @s if block ~ ~ ~ #sbp:end_stone_convertable_blocks run setblock ~ ~ ~ end_stone replace
kill @e[tag=end_stone_converter]
