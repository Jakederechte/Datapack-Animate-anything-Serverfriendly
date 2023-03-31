#depends on game:create_commandchest
#depends on game:delete_commandchest
#depends on game:block_detect
#depends on game:delete_bd
#depends on game:animation/start_animation
#depends on game:modify/papers
#depends on game:book/give_book


#detect if animation is started
execute as @e[type=marker,tag=commandchest,tag=!running,tag=!powered,tag=!blocked] at @s if block ~ ~ ~1 repeater[facing=south,powered=true] run function game:animation/start_animation
execute as @e[type=marker,tag=commandchest,tag=!running,tag=!powered,tag=!blocked] at @s if block ~ ~ ~-1 repeater[facing=north,powered=true] run function game:animation/start_animation
execute as @e[type=marker,tag=commandchest,tag=!running,tag=!powered,tag=!blocked] at @s if block ~1 ~ ~ repeater[facing=east,powered=true] run function game:animation/start_animation
execute as @e[type=marker,tag=commandchest,tag=!running,tag=!powered,tag=!blocked] at @s if block ~-1 ~ ~ repeater[facing=west,powered=true] run function game:animation/start_animation

#remove tag powered when not running and animation finished
execute as @e[type=marker,tag=commandchest,tag=!running] at @s unless block ~ ~ ~1 repeater[facing=south,powered=true] unless block ~ ~ ~-1 repeater[facing=north,powered=true] unless block ~1 ~ ~ repeater[facing=east,powered=true] unless block ~-1 ~ ~ repeater[facing=west,powered=true] run tag @s remove powered

#output redstone to repeater if running
execute as @e[type=marker,tag=commandchest,tag=running] at @s if block ~ ~ ~1 repeater[facing=north] run setblock ~ ~ ~1 repeater[facing=north,powered=true]
execute as @e[type=marker,tag=commandchest,tag=running] at @s if block ~ ~ ~-1 repeater[facing=south] run setblock ~ ~ ~-1 repeater[facing=south,powered=true]
execute as @e[type=marker,tag=commandchest,tag=running] at @s if block ~-1 ~ ~ repeater[facing=east] run setblock ~-1 ~ ~ repeater[facing=east,powered=true]
execute as @e[type=marker,tag=commandchest,tag=running] at @s if block ~1 ~ ~ repeater[facing=west] run setblock ~1 ~ ~ repeater[facing=west,powered=true]

#disable repeaters if not running
execute as @e[type=marker,tag=commandchest,tag=!running] at @s if block ~ ~ ~1 repeater[facing=north] run setblock ~ ~ ~1 repeater[facing=north,powered=false]
execute as @e[type=marker,tag=commandchest,tag=!running] at @s if block ~ ~ ~-1 repeater[facing=south] run setblock ~ ~ ~-1 repeater[facing=south,powered=false]
execute as @e[type=marker,tag=commandchest,tag=!running] at @s if block ~-1 ~ ~ repeater[facing=east] run setblock ~-1 ~ ~ repeater[facing=east,powered=false]
execute as @e[type=marker,tag=commandchest,tag=!running] at @s if block ~1 ~ ~ repeater[facing=west] run setblock ~1 ~ ~ repeater[facing=west,powered=false]

#stop cheating
execute as @e[type=item,nbt={Item:{id:"minecraft:paper",tag:{display:{Name:'{"text":"Add ID"}'}}}}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:paper",tag:{display:{Name:'{"text":"Remove ID"}'}}}},distance=..1] run kill @e[type=item,nbt={Item:{id:"minecraft:paper"}},distance=..1]

#create Block-Displays or Commandchests
execute as @e[type=item,nbt={Item:{id:"minecraft:paper",tag:{display:{Name:'{"text":"Add ID"}'}}}}] at @s positioned ~ ~-0.2 ~ run function game:block_detect

#delete commandchest
execute as @e[type=marker,tag=commandchest] at @s if block ~ ~ ~ air run function game:delete_commandchest

#delete Block-Displays
execute as @e[type=item,nbt={Item:{id:"minecraft:paper",tag:{display:{Name:'{"text":"Remove ID"}'}}}}] at @s positioned ~ ~-0.2 ~ align xyz if entity @e[tag=animation-bd,distance=..0.2] run function game:delete_bd

#modify blocks
execute as @e[type=item,nbt={Item:{id:"minecraft:paper"}}] at @s positioned ~ ~-0.5 ~ align xyz if entity @e[tag=animation-bd,distance=..0.2] positioned ~0.5 ~1 ~0.5 run function game:modify/papers

#give book if id = 0
execute as @a unless score @s animations-id matches -20.. run scoreboard players add @s animations-id 0
execute as @a if score @s animations-id matches 0 run function game:book/give_book

#Ids hiher than 0
execute as @a if score @s animations-id matches ..0 run scoreboard players set @s animations-id 1
