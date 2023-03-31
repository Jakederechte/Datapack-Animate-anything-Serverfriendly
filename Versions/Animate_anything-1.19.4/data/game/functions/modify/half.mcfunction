#depends on

tag @s add used
data modify entity @s PickupDelay set value 0s

#detect state
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{half:"top"}}}] run tag @e[tag=animation-bd,distance=..0.2] add top
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{half:"bottom"}}}] run tag @e[tag=animation-bd,distance=..0.2] add bottom

#set state
data modify entity @e[tag=animation-bd,distance=..0.2,limit=1,tag=top] block_state.Properties.half set value "bottom"
data modify entity @e[tag=animation-bd,distance=..0.2,limit=1,tag=bottom] block_state.Properties.half set value "top"

#tellraw
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{half:"top"}}}] run tellraw @a[distance=..5] ["",{"text":"Set new state: ","color":"dark_green"},{"text":"Bottom","bold":true,"color":"gold"}]
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{half:"bottom"}}}] run tellraw @a[distance=..5] ["",{"text":"Set new state: ","color":"dark_green"},{"text":"Top","bold":true,"color":"gold"}]

execute as @e[tag=animation-bd,distance=..0.2] run tag @s remove top
execute as @e[tag=animation-bd,distance=..0.2] run tag @s remove bottom