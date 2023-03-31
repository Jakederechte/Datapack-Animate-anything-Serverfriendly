#depends on

tag @s add used
data modify entity @s PickupDelay set value 0s

#detect state
    #fence
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{north:"true"}}}] run tag @e[tag=animation-bd,distance=..0.2] add ntrue
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{north:"false"}}}] run tag @e[tag=animation-bd,distance=..0.2] add nfalse
    #wall
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{north:"none"}}}] run tag @e[tag=animation-bd,distance=..0.2] add nnone
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{north:"low"}}}] run tag @e[tag=animation-bd,distance=..0.2] add nlow
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{north:"tall"}}}] run tag @e[tag=animation-bd,distance=..0.2] add ntall

#set state
    #fence
data modify entity @e[tag=animation-bd,distance=..0.2,limit=1,tag=ntrue] block_state.Properties.north set value "false"
data modify entity @e[tag=animation-bd,distance=..0.2,limit=1,tag=nfalse] block_state.Properties.north set value "true"
    #wall
data modify entity @e[tag=animation-bd,distance=..0.2,limit=1,tag=nnone] block_state.Properties.north set value "low"
data modify entity @e[tag=animation-bd,distance=..0.2,limit=1,tag=nlow] block_state.Properties.north set value "tall"
data modify entity @e[tag=animation-bd,distance=..0.2,limit=1,tag=ntall] block_state.Properties.north set value "none"

#tellraw
    #fence
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{north:"true"}}}] run tellraw @a[distance=..5] ["",{"text":"Connection north: ","color":"dark_green"},{"text":"Visible","bold":true,"color":"gold"}]
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{north:"false"}}}] run tellraw @a[distance=..5] ["",{"text":"Connection north: ","color":"dark_green"},{"text":"Invisible","bold":true,"color":"gold"}]
    #wall
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{north:"none"}}}] run tellraw @a[distance=..5] ["",{"text":"Connection north: ","color":"dark_green"},{"text":"Invisible","bold":true,"color":"gold"}]
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{north:"low"}}}] run tellraw @a[distance=..5] ["",{"text":"Connection north: ","color":"dark_green"},{"text":"Low","bold":true,"color":"gold"}]
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{north:"tall"}}}] run tellraw @a[distance=..5] ["",{"text":"Connection north: ","color":"dark_green"},{"text":"Tall","bold":true,"color":"gold"}]

    #fence
execute as @e[tag=animation-bd,distance=..0.2] run tag @s remove ntrue
execute as @e[tag=animation-bd,distance=..0.2] run tag @s remove nfalse
    #wall
execute as @e[tag=animation-bd,distance=..0.2] run tag @s remove nnone
execute as @e[tag=animation-bd,distance=..0.2] run tag @s remove nlow
execute as @e[tag=animation-bd,distance=..0.2] run tag @s remove ntall