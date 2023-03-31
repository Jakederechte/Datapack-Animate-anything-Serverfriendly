#depends on game:animation/animation/<next slot>

#up
execute as @e[tag=commandchest,tag=running,tag=21t,limit=1] at @s if block ~ ~ ~ minecraft:trapped_chest{Items:[{Slot:21b,id:"minecraft:paper",tag:{display:{Name:'{"text":"up"}'}}}]} as @e[tag=animation-bd] at @s if score @s animations-id = @e[tag=commandchest,tag=running,tag=21t,limit=1] animations-id at @s run teleport @s ~ ~1 ~

#down
execute as @e[tag=commandchest,tag=running,tag=21t,limit=1] at @s if block ~ ~ ~ minecraft:trapped_chest{Items:[{Slot:21b,id:"minecraft:paper",tag:{display:{Name:'{"text":"down"}'}}}]} as @e[tag=animation-bd] at @s if score @s animations-id = @e[tag=commandchest,tag=running,tag=21t,limit=1] animations-id at @s run teleport @s ~ ~-1 ~

#north
execute as @e[tag=commandchest,tag=running,tag=21t,limit=1] at @s if block ~ ~ ~ minecraft:trapped_chest{Items:[{Slot:21b,id:"minecraft:paper",tag:{display:{Name:'{"text":"north"}'}}}]} as @e[tag=animation-bd] at @s if score @s animations-id = @e[tag=commandchest,tag=running,tag=21t,limit=1] animations-id run teleport @s ~ ~ ~-1

#south
execute as @e[tag=commandchest,tag=running,tag=21t,limit=1] at @s if block ~ ~ ~ minecraft:trapped_chest{Items:[{Slot:21b,id:"minecraft:paper",tag:{display:{Name:'{"text":"south"}'}}}]} as @e[tag=animation-bd] at @s if score @s animations-id = @e[tag=commandchest,tag=running,tag=21t,limit=1] animations-id run teleport @s ~ ~ ~1

#east
execute as @e[tag=commandchest,tag=running,tag=21t,limit=1] at @s if block ~ ~ ~ minecraft:trapped_chest{Items:[{Slot:21b,id:"minecraft:paper",tag:{display:{Name:'{"text":"east"}'}}}]} as @e[tag=animation-bd] at @s if score @s animations-id = @e[tag=commandchest,tag=running,tag=21t,limit=1] animations-id run teleport @s ~1 ~ ~

#west
execute as @e[tag=commandchest,tag=running,tag=21t,limit=1] at @s if block ~ ~ ~ minecraft:trapped_chest{Items:[{Slot:21b,id:"minecraft:paper",tag:{display:{Name:'{"text":"west"}'}}}]} as @e[tag=animation-bd] at @s if score @s animations-id = @e[tag=commandchest,tag=running,tag=21t,limit=1] animations-id run teleport @s ~-1 ~ ~


execute as @e[tag=animation-bd] at @s if score @s animations-id = @e[tag=commandchest,tag=running,tag=21t,limit=1] animations-id run data modify entity @s transformation.translation set value [0f,0f,0f]

execute as @e[tag=commandchest,tag=running,tag=21t] run tag @s add 22a
execute as @e[tag=commandchest,tag=running,tag=21t] run tag @s remove 21t

schedule function game:animation/animation/slot22 2t