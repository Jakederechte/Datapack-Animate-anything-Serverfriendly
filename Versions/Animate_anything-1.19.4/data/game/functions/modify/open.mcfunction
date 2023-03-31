#depends on

tag @s add used
data modify entity @s PickupDelay set value 0s

#detect state
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{open:"true"}}}] run tag @e[tag=animation-bd,distance=..0.2] add optrue
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{open:"false"}}}] run tag @e[tag=animation-bd,distance=..0.2] add opfalse

#set state
data modify entity @e[tag=animation-bd,distance=..0.2,limit=1,tag=optrue] block_state.Properties.open set value "false"
data modify entity @e[tag=animation-bd,distance=..0.2,limit=1,tag=opfalse] block_state.Properties.open set value "true"

#Set the state of the lower half of the door, if any
execute positioned ~ ~-1 ~ run data modify entity @e[tag=animation-bd,distance=..0.2,limit=1,tag=down] block_state.Properties.open set from entity @e[tag=animation-bd,distance=..1.2,limit=1,tag=optrue] block_state.Properties.open
execute positioned ~ ~-1 ~ run data modify entity @e[tag=animation-bd,distance=..0.2,limit=1,tag=down] block_state.Properties.open set from entity @e[tag=animation-bd,distance=..1.2,limit=1,tag=opfalse] block_state.Properties.open

#tellraw
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{open:"true"}}}] run tellraw @a[distance=..5] ["",{"text":"Set new state: ","color":"dark_green"},{"text":"Opened","bold":true,"color":"gold"}]
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{open:"false"}}}] run tellraw @a[distance=..5] ["",{"text":"Set new state: ","color":"dark_green"},{"text":"Closed","bold":true,"color":"gold"}]

execute as @e[tag=animation-bd,distance=..0.2] run tag @s remove optrue
execute as @e[tag=animation-bd,distance=..0.2] run tag @s remove opfalse