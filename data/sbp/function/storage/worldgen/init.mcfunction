# starter island
execute unless data storage minecraft:skyblock_plus worldgen run data modify storage minecraft:skyblock_plus worldgen set value {starter_island:"pending"}

# end exit portal
execute unless data storage minecraft:skyblock_plus {worldgen:{end_exit_portal:{prepped:true}}} in minecraft:the_end run function sbp:worldgen/exit_end_portal/prep_end_exit_portal
execute unless data storage minecraft:skyblock_plus worldgen.end_exit_portal.status run data modify storage minecraft:skyblock_plus worldgen.end_exit_portal.status set value "pending"
