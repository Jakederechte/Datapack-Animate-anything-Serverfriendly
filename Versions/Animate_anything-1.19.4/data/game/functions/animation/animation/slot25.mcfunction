#depends on game:animation/teleportation/<same slot>

#up
execute as @e[tag=commandchest,tag=running,tag=25a,limit=1] at @s if block ~ ~ ~ minecraft:trapped_chest{Items:[{Slot:25b,id:"minecraft:paper",tag:{display:{Name:'{"text":"up"}'}}}]} as @e[tag=animation-bd] at @s if score @s animations-id = @e[tag=commandchest,tag=running,tag=25a,limit=1] animations-id run data merge entity @s {start_interpolation:-1,interpolation_duration:20,transformation:{translation:[0f,1f,0f],scale:[1f,1f,1f]}}

#down
execute as @e[tag=commandchest,tag=running,tag=25a,limit=1] at @s if block ~ ~ ~ minecraft:trapped_chest{Items:[{Slot:25b,id:"minecraft:paper",tag:{display:{Name:'{"text":"down"}'}}}]} as @e[tag=animation-bd] at @s if score @s animations-id = @e[tag=commandchest,tag=running,tag=25a,limit=1] animations-id run data merge entity @s {start_interpolation:-1,interpolation_duration:20,transformation:{translation:[0f,-1f,0f],scale:[1f,1f,1f]}}

#north
execute as @e[tag=commandchest,tag=running,tag=25a,limit=1] at @s if block ~ ~ ~ minecraft:trapped_chest{Items:[{Slot:25b,id:"minecraft:paper",tag:{display:{Name:'{"text":"north"}'}}}]} as @e[tag=animation-bd] at @s if score @s animations-id = @e[tag=commandchest,tag=running,tag=25a,limit=1] animations-id run data merge entity @s {start_interpolation:-1,interpolation_duration:20,transformation:{translation:[0f,0f,-1f],scale:[1f,1f,1f]}}

#south
execute as @e[tag=commandchest,tag=running,tag=25a,limit=1] at @s if block ~ ~ ~ minecraft:trapped_chest{Items:[{Slot:25b,id:"minecraft:paper",tag:{display:{Name:'{"text":"south"}'}}}]} as @e[tag=animation-bd] at @s if score @s animations-id = @e[tag=commandchest,tag=running,tag=25a,limit=1] animations-id run data merge entity @s {start_interpolation:-1,interpolation_duration:20,transformation:{translation:[0f,0f,1f],scale:[1f,1f,1f]}}

#east
execute as @e[tag=commandchest,tag=running,tag=25a,limit=1] at @s if block ~ ~ ~ minecraft:trapped_chest{Items:[{Slot:25b,id:"minecraft:paper",tag:{display:{Name:'{"text":"east"}'}}}]} as @e[tag=animation-bd] at @s if score @s animations-id = @e[tag=commandchest,tag=running,tag=25a,limit=1] animations-id run data merge entity @s {start_interpolation:-1,interpolation_duration:20,transformation:{translation:[1f,0f,0f],scale:[1f,1f,1f]}}

#west
execute as @e[tag=commandchest,tag=running,tag=25a,limit=1] at @s if block ~ ~ ~ minecraft:trapped_chest{Items:[{Slot:25b,id:"minecraft:paper",tag:{display:{Name:'{"text":"west"}'}}}]} as @e[tag=animation-bd] at @s if score @s animations-id = @e[tag=commandchest,tag=running,tag=25a,limit=1] animations-id run data merge entity @s {start_interpolation:-1,interpolation_duration:20,transformation:{translation:[-1f,0f,0f],scale:[1f,1f,1f]}}


execute as @e[tag=commandchest,tag=running,tag=25a] run tag @s add 25t
execute as @e[tag=commandchest,tag=running,tag=25a] run tag @s remove 25a

schedule function game:animation/teleportation/slot25 20t

#stop 
execute as @e[tag=commandchest,tag=running,tag=25t,limit=1] at @s if block ~ ~ ~ minecraft:trapped_chest{Items:[{Slot:25b,id:"minecraft:paper",tag:{display:{Name:'{"text":"stop"}'}}}]} run schedule clear game:animation/teleportation/slot25
execute as @e[tag=commandchest,tag=running,tag=25t,limit=1] at @s if block ~ ~ ~ minecraft:trapped_chest{Items:[{Slot:25b,id:"minecraft:paper",tag:{display:{Name:'{"text":"stop"}'}}}]} run function game:animation/end_animation
