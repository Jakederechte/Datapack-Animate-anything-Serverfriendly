#depends on

tag @s add used
data modify entity @s PickupDelay set value 0s

#detect state
    #fence
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{west:"true"}}}] run tag @e[tag=animation-bd,distance=..0.2] add wtrue
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{west:"false"}}}] run tag @e[tag=animation-bd,distance=..0.2] add wfalse
    #wall
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{west:"none"}}}] run tag @e[tag=animation-bd,distance=..0.2] add wnone
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{west:"low"}}}] run tag @e[tag=animation-bd,distance=..0.2] add wlow
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{west:"tall"}}}] run tag @e[tag=animation-bd,distance=..0.2] add wtall

#set state
    #fence
data modify entity @e[tag=animation-bd,distance=..0.2,limit=1,tag=wtrue] block_state.Properties.west set value "false"
data modify entity @e[tag=animation-bd,distance=..0.2,limit=1,tag=wfalse] block_state.Properties.west set value "true"
    #wall
data modify entity @e[tag=animation-bd,distance=..0.2,limit=1,tag=wnone] block_state.Properties.west set value "low"
data modify entity @e[tag=animation-bd,distance=..0.2,limit=1,tag=wlow] block_state.Properties.west set value "tall"
data modify entity @e[tag=animation-bd,distance=..0.2,limit=1,tag=wtall] block_state.Properties.west set value "none"

#tellraw
    #fence
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{west:"true"}}}] run tellraw @a[distance=..5] ["",{"text":"Connection west: ","color":"dark_green"},{"text":"Visible","bold":true,"color":"gold"}]
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{west:"false"}}}] run tellraw @a[distance=..5] ["",{"text":"Connection west: ","color":"dark_green"},{"text":"Invisible","bold":true,"color":"gold"}]
    #wall
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{west:"none"}}}] run tellraw @a[distance=..5] ["",{"text":"Connection west: ","color":"dark_green"},{"text":"Invisible","bold":true,"color":"gold"}]
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{west:"low"}}}] run tellraw @a[distance=..5] ["",{"text":"Connection west: ","color":"dark_green"},{"text":"Low","bold":true,"color":"gold"}]
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{west:"tall"}}}] run tellraw @a[distance=..5] ["",{"text":"Connection west: ","color":"dark_green"},{"text":"Tall","bold":true,"color":"gold"}]

    #fence
execute as @e[tag=animation-bd,distance=..0.2] run tag @s remove wtrue
execute as @e[tag=animation-bd,distance=..0.2] run tag @s remove wfalse
    #wall
execute as @e[tag=animation-bd,distance=..0.2] run tag @s remove wnone
execute as @e[tag=animation-bd,distance=..0.2] run tag @s remove wlow
execute as @e[tag=animation-bd,distance=..0.2] run tag @s remove wtall