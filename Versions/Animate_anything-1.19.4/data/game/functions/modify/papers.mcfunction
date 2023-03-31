#depends on game:modify/facing
#depends on game:modify/open
#depends on game:modify/half
#depends on game:modify/up
#depends on game:modify/south
#depends on game:modify/north
#depends on game:modify/east
#depends on game:modify/west


#facing
execute if entity @e[nbt={Item:{id:"minecraft:paper",tag:{display:{Name:'{"text":"facing"}'}}}},distance=..0.5,tag=!used] positioned ~ ~-0.5 ~ align xyz run function game:modify/facing

#open
execute if entity @e[nbt={Item:{id:"minecraft:paper",tag:{display:{Name:'{"text":"open"}'}}}},distance=..0.5,tag=!used] positioned ~ ~-0.5 ~ align xyz run function game:modify/open

#half
execute if entity @e[nbt={Item:{id:"minecraft:paper",tag:{display:{Name:'{"text":"half"}'}}}},distance=..0.5,tag=!used] positioned ~ ~-0.5 ~ align xyz run function game:modify/half

#up
execute if entity @e[nbt={Item:{id:"minecraft:paper",tag:{display:{Name:'{"text":"up"}'}}}},distance=..0.5,tag=!used] positioned ~ ~-0.5 ~ align xyz run function game:modify/up

#south
execute if entity @e[nbt={Item:{id:"minecraft:paper",tag:{display:{Name:'{"text":"south"}'}}}},distance=..0.5,tag=!used] positioned ~ ~-0.5 ~ align xyz run function game:modify/south

#north
execute if entity @e[nbt={Item:{id:"minecraft:paper",tag:{display:{Name:'{"text":"north"}'}}}},distance=..0.5,tag=!used] positioned ~ ~-0.5 ~ align xyz run function game:modify/north

#east
execute if entity @e[nbt={Item:{id:"minecraft:paper",tag:{display:{Name:'{"text":"east"}'}}}},distance=..0.5,tag=!used] positioned ~ ~-0.5 ~ align xyz run function game:modify/east

#west
execute if entity @e[nbt={Item:{id:"minecraft:paper",tag:{display:{Name:'{"text":"west"}'}}}},distance=..0.5,tag=!used] positioned ~ ~-0.5 ~ align xyz run function game:modify/west
