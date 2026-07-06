data merge storage minecraft:skyblock_plus {worldgen:{end_exit_portal:{status:"lit"}}}
function sbp:worldgen/exit_end_portal/remove_portal_end_stone
function sbp:worldgen/exit_end_portal/check_for_gateway_portals

execute in minecraft:the_end positioned 0 67 0 if data storage minecraft:skyblock_plus {dragon_status:"alive"} run summon minecraft:shulker 0 67 0
execute in minecraft:the_end positioned 0 67 0 if data storage minecraft:skyblock_plus {dragon_status:"alive"} run advancement grant @a[distance=..50] only sbp:end/thats_no_endermite

data modify storage minecraft:skyblock_plus dragon_status set value "dead"
