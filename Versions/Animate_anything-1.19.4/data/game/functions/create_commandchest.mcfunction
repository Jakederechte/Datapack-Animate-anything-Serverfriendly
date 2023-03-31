#depends on

data modify entity @s PickupDelay set value 0s

execute align xyz positioned ~0.5 ~0.5 ~0.5 if entity @e[type=marker,tag=commandchest,distance=0.5..1.5] run tellraw @a[distance=..5] {"text":"You cannot place two Command-Chests next to each other","color":"dark_red","bold":true}

execute align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=marker,tag=commandchest,distance=..1.5] positioned ~ ~1 ~ run particle explosion
execute align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=marker,tag=commandchest,distance=..1.5] run playsound entity.generic.explode block @a[distance=..5]
execute align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=marker,tag=commandchest,distance=..1.5] run tellraw @a[distance=..5] {"text":"Made the Chest a Command-Chest and set Id","color":"green","bold":true}
execute align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=marker,tag=commandchest,distance=..1.5] run summon marker ~ ~ ~ {Tags:["commandchest","new"]}
execute as @e[tag=new,distance=..1.5] run scoreboard players operation @s animations-id = @a[limit=1,sort=nearest] animations-id
execute as @e[tag=new,distance=..1.5] run data modify block ~ ~ ~ CustomName set value '{"text":"Command-Chest"}'
execute as @e[tag=new,distance=..1.5] run tag @s remove new

