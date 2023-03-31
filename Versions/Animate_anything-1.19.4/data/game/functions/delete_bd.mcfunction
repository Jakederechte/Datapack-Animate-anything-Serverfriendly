#depends on

execute if block ~ ~ ~ barrier run setblock ~ ~ ~ air

summon item ~0.5 ~0.5 ~0.5 {Tags:["spawn"],Item:{id:"minecraft:paper",Count:1b}}

execute as @e[tag=spawn] at @s align xyz run data modify entity @s Item.id set from entity @e[type=block_display,limit=1,sort=nearest,distance=..0.2] block_state.Name

execute as @e[tag=spawn] run tag @s remove spawn

execute unless entity @e[tag=commandchest,tag=remove] run tellraw @a[distance=..5] {"text":"Block was removed","color":"dark_red","bold":true}

kill @e[tag=animation-bd,distance=..0.2]
