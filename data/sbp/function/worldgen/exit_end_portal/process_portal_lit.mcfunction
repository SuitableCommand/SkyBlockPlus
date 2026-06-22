data merge storage minecraft:skyblock_plus {worldgen:{end_exit_portal:{status:"lit"}}}
function sbp:worldgen/exit_end_portal/remove_portal_end_stone
function sbp:worldgen/exit_end_portal/check_for_gateway_portals
tellraw @a "process_portal_lit"