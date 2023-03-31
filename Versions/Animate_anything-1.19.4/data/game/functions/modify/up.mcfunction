#depends on

tag @s add used
data modify entity @s PickupDelay set value 0s

#detect state
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{up:"true"}}}] run tag @e[tag=animation-bd,distance=..0.2] add uptrue
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{up:"false"}}}] run tag @e[tag=animation-bd,distance=..0.2] add upfalse

#set state
data modify entity @e[tag=animation-bd,distance=..0.2,limit=1,tag=uptrue] block_state.Properties.up set value "false"
data modify entity @e[tag=animation-bd,distance=..0.2,limit=1,tag=upfalse] block_state.Properties.up set value "true"

#tellraw
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{up:"true"}}}] run tellraw @a[distance=..5] ["",{"text":"Center post: ","color":"dark_green"},{"text":"Visible","bold":true,"color":"gold"}]
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{up:"false"}}}] run tellraw @a[distance=..5] ["",{"text":"Center post: ","color":"dark_green"},{"text":"Invisible","bold":true,"color":"gold"}]

execute as @e[tag=animation-bd,distance=..0.2] run tag @s remove uptrue
execute as @e[tag=animation-bd,distance=..0.2] run tag @s remove upfalse