#depends on

data modify entity @s PickupDelay set value 0s

setblock ~ ~ ~ air destroy
execute align xyz run summon block_display ~ ~ ~ {Tags:["animation-bd","new"],block_state:{Name:"minecraft:air"}}
execute as @e[tag=new,limit=1] at @s positioned ~ ~ ~ run data modify entity @s block_state.Name set from entity @e[type=item,limit=1,sort=nearest,distance=..2,nbt=!{Item:{id:"minecraft:paper",tag:{display:{Name:'{"text":"Add ID"}'}}}}] Item.id
execute as @e[tag=new,limit=1] at @s positioned ~ ~ ~ run kill @e[type=item,limit=1,sort=nearest,distance=..2,nbt=!{Item:{id:"minecraft:paper",tag:{display:{Name:'{"text":"Add ID"}'}}}}]
setblock ~ ~ ~ barrier
execute as @e[tag=new] run tag @s remove new 
execute align xyz run scoreboard players operation @e[type=block_display,distance=..0.5] animations-id = @a[limit=1,sort=nearest] animations-id
tellraw @a[distance=..5] {"text":"Id set for Block","color":"green","bold":true}