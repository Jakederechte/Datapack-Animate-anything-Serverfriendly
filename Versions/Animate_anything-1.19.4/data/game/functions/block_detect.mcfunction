#depends on game:create_bd
#depends on game:create_bd_door
#depends on game:create_commandchest

execute unless block ~ ~ ~ air unless block ~ ~ ~ barrier unless block ~ ~ ~ trapped_chest unless block ~ ~ ~ oak_door unless block ~ ~ ~ birch_door unless block ~ ~ ~ iron_door unless block ~ ~ ~ acacia_door unless block ~ ~ ~ jungle_door unless block ~ ~ ~ spruce_door unless block ~ ~ ~ warped_door unless block ~ ~ ~ crimson_door unless block ~ ~ ~ mangrove_door unless block ~ ~ ~ dark_oak_door run function game:create_bd

execute unless block ~ ~ ~ air unless block ~ ~ ~ barrier unless block ~ ~ ~ trapped_chest if block ~ ~ ~ oak_door run function game:create_bd_door
execute unless block ~ ~ ~ air unless block ~ ~ ~ barrier unless block ~ ~ ~ trapped_chest if block ~ ~ ~ birch_door run function game:create_bd_door
execute unless block ~ ~ ~ air unless block ~ ~ ~ barrier unless block ~ ~ ~ trapped_chest if block ~ ~ ~ iron_door run function game:create_bd_door
execute unless block ~ ~ ~ air unless block ~ ~ ~ barrier unless block ~ ~ ~ trapped_chest if block ~ ~ ~ acacia_door run function game:create_bd_door
execute unless block ~ ~ ~ air unless block ~ ~ ~ barrier unless block ~ ~ ~ trapped_chest if block ~ ~ ~ jungle_door run function game:create_bd_door
execute unless block ~ ~ ~ air unless block ~ ~ ~ barrier unless block ~ ~ ~ trapped_chest if block ~ ~ ~ spruce_door run function game:create_bd_door
execute unless block ~ ~ ~ air unless block ~ ~ ~ barrier unless block ~ ~ ~ trapped_chest if block ~ ~ ~ warped_door run function game:create_bd_door
execute unless block ~ ~ ~ air unless block ~ ~ ~ barrier unless block ~ ~ ~ trapped_chest if block ~ ~ ~ crimson_door run function game:create_bd_door
execute unless block ~ ~ ~ air unless block ~ ~ ~ barrier unless block ~ ~ ~ trapped_chest if block ~ ~ ~ mangrove_door run function game:create_bd_door
execute unless block ~ ~ ~ air unless block ~ ~ ~ barrier unless block ~ ~ ~ trapped_chest if block ~ ~ ~ dark_oak_door run function game:create_bd_door

execute if block ~ ~ ~ trapped_chest run function game:create_commandchest
