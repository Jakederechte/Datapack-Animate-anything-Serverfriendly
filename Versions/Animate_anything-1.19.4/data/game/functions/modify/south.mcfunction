#depends on

tag @s add used
data modify entity @s PickupDelay set value 0s

#detect state
    #fence
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{south:"true"}}}] run tag @e[tag=animation-bd,distance=..0.2] add strue
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{south:"false"}}}] run tag @e[tag=animation-bd,distance=..0.2] add sfalse
    #wall
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{south:"none"}}}] run tag @e[tag=animation-bd,distance=..0.2] add snone
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{south:"low"}}}] run tag @e[tag=animation-bd,distance=..0.2] add slow
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{south:"tall"}}}] run tag @e[tag=animation-bd,distance=..0.2] add stall

#set state
    #fence
data modify entity @e[tag=animation-bd,distance=..0.2,limit=1,tag=strue] block_state.Properties.south set value "false"
data modify entity @e[tag=animation-bd,distance=..0.2,limit=1,tag=sfalse] block_state.Properties.south set value "true"
    #wall
data modify entity @e[tag=animation-bd,distance=..0.2,limit=1,tag=snone] block_state.Properties.south set value "low"
data modify entity @e[tag=animation-bd,distance=..0.2,limit=1,tag=slow] block_state.Properties.south set value "tall"
data modify entity @e[tag=animation-bd,distance=..0.2,limit=1,tag=stall] block_state.Properties.south set value "none"

#tellraw
    #fence
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{south:"true"}}}] run tellraw @a[distance=..5] ["",{"text":"Connection south: ","color":"dark_green"},{"text":"Visible","bold":true,"color":"gold"}]
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{south:"false"}}}] run tellraw @a[distance=..5] ["",{"text":"Connection south: ","color":"dark_green"},{"text":"Invisible","bold":true,"color":"gold"}]
    #wall
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{south:"none"}}}] run tellraw @a[distance=..5] ["",{"text":"Connection south: ","color":"dark_green"},{"text":"Invisible","bold":true,"color":"gold"}]
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{south:"low"}}}] run tellraw @a[distance=..5] ["",{"text":"Connection south: ","color":"dark_green"},{"text":"Low","bold":true,"color":"gold"}]
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{south:"tall"}}}] run tellraw @a[distance=..5] ["",{"text":"Connection south: ","color":"dark_green"},{"text":"Tall","bold":true,"color":"gold"}]

    #fence
execute as @e[tag=animation-bd,distance=..0.2] run tag @s remove strue
execute as @e[tag=animation-bd,distance=..0.2] run tag @s remove sfalse
    #wall
execute as @e[tag=animation-bd,distance=..0.2] run tag @s remove snone
execute as @e[tag=animation-bd,distance=..0.2] run tag @s remove slow
execute as @e[tag=animation-bd,distance=..0.2] run tag @s remove stall