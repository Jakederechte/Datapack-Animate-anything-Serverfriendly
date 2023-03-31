#depends on

tag @s add count

scoreboard players set counting-bd animations-id 0
scoreboard players set counting-cc animations-id 0

execute as @e[tag=animation-bd] if score @s animations-id = @a[tag=count,limit=1] animations-id run scoreboard players add counting-bd animations-id 1

execute as @e[tag=commandchest] if score @s animations-id = @a[tag=count,limit=1] animations-id run scoreboard players add counting-cc animations-id 1 

tag @s remove count
