#depends on

tag @s add used
data modify entity @s PickupDelay set value 0s

#detect direction
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{facing:"north"}}}] run tag @e[tag=animation-bd,distance=..0.2] add north
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{facing:"east"}}}] run tag @e[tag=animation-bd,distance=..0.2] add east
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{facing:"south"}}}] run tag @e[tag=animation-bd,distance=..0.2] add south
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{facing:"west"}}}] run tag @e[tag=animation-bd,distance=..0.2] add west

#set direction
data modify entity @e[tag=animation-bd,distance=..0.2,limit=1,tag=north] block_state.Properties.facing set value "east"
data modify entity @e[tag=animation-bd,distance=..0.2,limit=1,tag=east] block_state.Properties.facing set value "south"
data modify entity @e[tag=animation-bd,distance=..0.2,limit=1,tag=south] block_state.Properties.facing set value "west"
data modify entity @e[tag=animation-bd,distance=..0.2,limit=1,tag=west] block_state.Properties.facing set value "north"

#Set the direction of the lower half of the door, if any
execute positioned ~ ~-1 ~ run data modify entity @e[tag=animation-bd,distance=..0.2,limit=1,tag=down] block_state.Properties.facing set from entity @e[tag=animation-bd,distance=..1.2,limit=1,tag=north] block_state.Properties.facing
execute positioned ~ ~-1 ~ run data modify entity @e[tag=animation-bd,distance=..0.2,limit=1,tag=down] block_state.Properties.facing set from entity @e[tag=animation-bd,distance=..1.2,limit=1,tag=east] block_state.Properties.facing
execute positioned ~ ~-1 ~ run data modify entity @e[tag=animation-bd,distance=..0.2,limit=1,tag=down] block_state.Properties.facing set from entity @e[tag=animation-bd,distance=..1.2,limit=1,tag=south] block_state.Properties.facing
execute positioned ~ ~-1 ~ run data modify entity @e[tag=animation-bd,distance=..0.2,limit=1,tag=down] block_state.Properties.facing set from entity @e[tag=animation-bd,distance=..1.2,limit=1,tag=west] block_state.Properties.facing

#tellraw
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{facing:"north"}}}] run tellraw @a[distance=..5] ["",{"text":"Set new direction: ","color":"dark_green"},{"text":"North","bold":true,"color":"gold"}]
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{facing:"east"}}}] run tellraw @a[distance=..5] ["",{"text":"Set new direction: ","color":"dark_green"},{"text":"East","bold":true,"color":"gold"}]
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{facing:"south"}}}] run tellraw @a[distance=..5] ["",{"text":"Set new direction: ","color":"dark_green"},{"text":"South","bold":true,"color":"gold"}]
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{facing:"west"}}}] run tellraw @a[distance=..5] ["",{"text":"Set new direction: ","color":"dark_green"},{"text":"West","bold":true,"color":"gold"}]

execute as @e[tag=animation-bd,distance=..0.2] run tag @s remove north
execute as @e[tag=animation-bd,distance=..0.2] run tag @s remove east
execute as @e[tag=animation-bd,distance=..0.2] run tag @s remove south
execute as @e[tag=animation-bd,distance=..0.2] run tag @s remove west