tag @s add processed_master

execute if data entity @s Offers.Recipes[9] run data remove entity @s Offers.Recipes[9]

# compile possible trims

data modify storage minecraft:skyblock_plus villager.armorer.master set value [{maxUses:12,buy:{count:1,id:"minecraft:iron_block"},sell:{count:4,id:"minecraft:emerald"},xp:30}]

execute if biome ~ ~ ~ #sbp:trim_biomes/sentry run data modify storage minecraft:skyblock_plus villager.armorer.master append value {maxUses:1,buy:{count:7,id:"minecraft:diamond"},buyB:{count:1,id:"minecraft:cobblestone"},sell:{count:1,id:"minecraft:sentry_armor_trim_smithing_template"},xp:30}
execute if biome ~ ~ ~ #sbp:trim_biomes/vex run data modify storage minecraft:skyblock_plus villager.armorer.master append value {maxUses:1,buy:{count:7,id:"minecraft:diamond"},buyB:{count:1,id:"minecraft:cobblestone"},sell:{count:1,id:"minecraft:vex_armor_trim_smithing_template"},xp:30}
execute if biome ~ ~ ~ #sbp:trim_biomes/wild run data modify storage minecraft:skyblock_plus villager.armorer.master append value {maxUses:1,buy:{count:7,id:"minecraft:diamond"},buyB:{count:1,id:"minecraft:mossy_cobblestone"},sell:{count:1,id:"minecraft:wild_armor_trim_smithing_template"},xp:30}
execute if biome ~ ~ ~ #sbp:trim_biomes/coast run data modify storage minecraft:skyblock_plus villager.armorer.master append value {maxUses:1,buy:{count:7,id:"minecraft:diamond"},buyB:{count:1,id:"minecraft:cobblestone"},sell:{count:1,id:"minecraft:coast_armor_trim_smithing_template"},xp:30}
execute if biome ~ ~ ~ #sbp:trim_biomes/dune run data modify storage minecraft:skyblock_plus villager.armorer.master append value {maxUses:1,buy:{count:7,id:"minecraft:diamond"},buyB:{count:1,id:"minecraft:sandstone"},sell:{count:1,id:"minecraft:dune_armor_trim_smithing_template"},xp:30}
execute if biome ~ ~ ~ #sbp:trim_biomes/wayfinder run data modify storage minecraft:skyblock_plus villager.armorer.master append value {maxUses:1,buy:{count:7,id:"minecraft:diamond"},buyB:{count:1,id:"minecraft:terracotta"},sell:{count:1,id:"minecraft:wayfinder_armor_trim_smithing_template"},xp:30}
execute if biome ~ ~ ~ #sbp:trim_biomes/raiser run data modify storage minecraft:skyblock_plus villager.armorer.master append value {maxUses:1,buy:{count:7,id:"minecraft:diamond"},buyB:{count:1,id:"minecraft:terracotta"},sell:{count:1,id:"minecraft:raiser_armor_trim_smithing_template"},xp:30}
execute if biome ~ ~ ~ #sbp:trim_biomes/shaper run data modify storage minecraft:skyblock_plus villager.armorer.master append value {maxUses:1,buy:{count:7,id:"minecraft:diamond"},buyB:{count:1,id:"minecraft:terracotta"},sell:{count:1,id:"minecraft:shaper_armor_trim_smithing_template"},xp:30}
execute if biome ~ ~ ~ #sbp:trim_biomes/host run data modify storage minecraft:skyblock_plus villager.armorer.master append value {maxUses:1,buy:{count:7,id:"minecraft:diamond"},buyB:{count:1,id:"minecraft:terracotta"},sell:{count:1,id:"minecraft:host_armor_trim_smithing_template"},xp:30}
execute if biome ~ ~ ~ #sbp:trim_biomes/ward run data modify storage minecraft:skyblock_plus villager.armorer.master append value {maxUses:1,buy:{count:7,id:"minecraft:diamond"},buyB:{count:1,id:"minecraft:cobbled_deepslate"},sell:{count:1,id:"minecraft:ward_armor_trim_smithing_template"},xp:30}
execute if biome ~ ~ ~ #sbp:trim_biomes/silence run data modify storage minecraft:skyblock_plus villager.armorer.master append value {maxUses:1,buy:{count:7,id:"minecraft:diamond"},buyB:{count:1,id:"minecraft:sculk"},sell:{count:1,id:"minecraft:silence_armor_trim_smithing_template"},xp:30}
execute if biome ~ ~ ~ #sbp:trim_biomes/tide run data modify storage minecraft:skyblock_plus villager.armorer.master append value {maxUses:1,buy:{count:7,id:"minecraft:diamond"},buyB:{count:1,id:"minecraft:prismarine_bricks"},sell:{count:1,id:"minecraft:tide_armor_trim_smithing_template"},xp:30}
execute if biome ~ ~ ~ #sbp:trim_biomes/snout run data modify storage minecraft:skyblock_plus villager.armorer.master append value {maxUses:1,buy:{count:7,id:"minecraft:diamond"},buyB:{count:1,id:"minecraft:chiseled_polished_blackstone"},sell:{count:1,id:"minecraft:snout_armor_trim_smithing_template"},xp:30}
execute if biome ~ ~ ~ #sbp:trim_biomes/rib run data modify storage minecraft:skyblock_plus villager.armorer.master append value {maxUses:1,buy:{count:7,id:"minecraft:diamond"},buyB:{count:1,id:"minecraft:chiseled_nether_bricks"},sell:{count:1,id:"minecraft:rib_armor_trim_smithing_template"},xp:30}
execute if biome ~ ~ ~ #sbp:trim_biomes/eye run data modify storage minecraft:skyblock_plus villager.armorer.master append value {maxUses:1,buy:{count:7,id:"minecraft:diamond"},buyB:{count:1,id:"minecraft:end_stone_bricks"},sell:{count:1,id:"minecraft:eye_armor_trim_smithing_template"},xp:30}
execute if biome ~ ~ ~ #sbp:trim_biomes/spire run data modify storage minecraft:skyblock_plus villager.armorer.master append value {maxUses:1,buy:{count:7,id:"minecraft:diamond"},buyB:{count:1,id:"minecraft:purpur_block"},sell:{count:1,id:"minecraft:spire_armor_trim_smithing_template"},xp:30}
execute if biome ~ ~ ~ #sbp:trim_biomes/flow run data modify storage minecraft:skyblock_plus villager.armorer.master append value {maxUses:1,buy:{count:7,id:"minecraft:diamond"},buyB:{count:1,id:"minecraft:breeze_rod"},sell:{count:1,id:"minecraft:flow_armor_trim_smithing_template"},xp:30}
execute if biome ~ ~ ~ #sbp:trim_biomes/bolt run data modify storage minecraft:skyblock_plus villager.armorer.master append value {maxUses:1,buy:{count:7,id:"minecraft:diamond"},buyB:{count:1,id:"minecraft:copper_block"},sell:{count:1,id:"minecraft:bolt_armor_trim_smithing_template"},xp:30}

# select random master trade

data modify storage minecraft:skyblock_plus math.spin set value {namespace:"minecraft:skyblock_plus",path:"villager.armorer.master"}
function math:spin/start with storage minecraft:skyblock_plus math.spin

data modify entity @s Offers.Recipes[8] set from storage minecraft:math spin.list[0]
