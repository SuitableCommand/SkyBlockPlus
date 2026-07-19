# update storage when end is loaded for the first time
execute if data storage minecraft:skyblock_plus {worldgen:{end_exit_portal:{status:"pending"}}} in minecraft:the_end if entity @e[type=minecraft:ender_dragon] run function sbp:worldgen/exit_end_portal/process_portal_extinguished

# update storage when end exit portal is lit
execute if data storage minecraft:skyblock_plus {worldgen:{end_exit_portal:{status:"extinguished"}}} in minecraft:the_end if block 0 63 1 minecraft:end_portal run function sbp:worldgen/exit_end_portal/process_portal_lit

# update storage when end exit portal is extinguished
execute if data storage minecraft:skyblock_plus {worldgen:{end_exit_portal:{status:"lit"}}} in minecraft:the_end positioned 0 64 3 if data entity @e[type=minecraft:end_crystal,limit=1,sort=nearest] beam_target run function sbp:worldgen/exit_end_portal/process_portal_extinguished
