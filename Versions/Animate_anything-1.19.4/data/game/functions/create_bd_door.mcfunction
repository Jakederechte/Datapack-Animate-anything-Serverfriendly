#depends on

setblock ~ ~ ~ air destroy

data modify entity @s PickupDelay set value 0s

execute align xyz run summon block_display ~ ~ ~ {Tags:["animation-bd","new","up"],block_state:{Name:"minecraft:air"}}
execute align xyz run summon block_display ~ ~-1 ~ {Tags:["animation-bd","new","down"],block_state:{Name:"minecraft:air"}}

execute as @e[tag=new] at @s positioned ~ ~ ~ run data modify entity @s block_state.Name set from entity @e[type=item,limit=1,sort=nearest,distance=..2,nbt=!{Item:{id:"minecraft:paper",tag:{display:{Name:'{"text":"Add ID"}'}}}}] Item.id

data modify entity @e[tag=new,tag=down,limit=1] block_state.Properties.half set value "lower"
data modify entity @e[tag=new,tag=up,limit=1] block_state.Properties.half set value "upper"

execute as @e[tag=new,limit=1] at @s positioned ~ ~ ~ run kill @e[type=item,limit=1,sort=nearest,distance=..2,nbt=!{Item:{id:"minecraft:paper",tag:{display:{Name:'{"text":"Add ID"}'}}}}]
setblock ~ ~ ~ barrier
setblock ~ ~-1 ~ barrier

execute align xyz run scoreboard players operation @e[type=block_display,distance=..3,tag=new] animations-id = @a[limit=1,sort=nearest] animations-id

execute as @e[tag=new] run tag @s remove new 

tellraw @a[distance=..5] {"text":"Id set for Door","color":"green","bold":true}