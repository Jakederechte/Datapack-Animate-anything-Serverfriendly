#depends on

tag @s add used
data modify entity @s PickupDelay set value 0s

#detect state
    #fence
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{east:"true"}}}] run tag @e[tag=animation-bd,distance=..0.2] add etrue
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{east:"false"}}}] run tag @e[tag=animation-bd,distance=..0.2] add efalse
    #wall
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{east:"none"}}}] run tag @e[tag=animation-bd,distance=..0.2] add enone
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{east:"low"}}}] run tag @e[tag=animation-bd,distance=..0.2] add elow
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{east:"tall"}}}] run tag @e[tag=animation-bd,distance=..0.2] add etall

#set state
    #fence
data modify entity @e[tag=animation-bd,distance=..0.2,limit=1,tag=etrue] block_state.Properties.east set value "false"
data modify entity @e[tag=animation-bd,distance=..0.2,limit=1,tag=efalse] block_state.Properties.east set value "true"
    #wall
data modify entity @e[tag=animation-bd,distance=..0.2,limit=1,tag=enone] block_state.Properties.east set value "low"
data modify entity @e[tag=animation-bd,distance=..0.2,limit=1,tag=elow] block_state.Properties.east set value "tall"
data modify entity @e[tag=animation-bd,distance=..0.2,limit=1,tag=etall] block_state.Properties.east set value "none"

#tellraw
    #fence
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{east:"true"}}}] run tellraw @a[distance=..5] ["",{"text":"Connection east: ","color":"dark_green"},{"text":"Visible","bold":true,"color":"gold"}]
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{east:"false"}}}] run tellraw @a[distance=..5] ["",{"text":"Connection east: ","color":"dark_green"},{"text":"Invisible","bold":true,"color":"gold"}]
    #wall
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{east:"none"}}}] run tellraw @a[distance=..5] ["",{"text":"Connection east: ","color":"dark_green"},{"text":"Invisible","bold":true,"color":"gold"}]
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{east:"low"}}}] run tellraw @a[distance=..5] ["",{"text":"Connection east: ","color":"dark_green"},{"text":"Low","bold":true,"color":"gold"}]
execute if entity @e[tag=animation-bd,distance=..0.2,limit=1,nbt={block_state:{Properties:{east:"tall"}}}] run tellraw @a[distance=..5] ["",{"text":"Connection east: ","color":"dark_green"},{"text":"Tall","bold":true,"color":"gold"}]

    #fence
execute as @e[tag=animation-bd,distance=..0.2] run tag @s remove etrue
execute as @e[tag=animation-bd,distance=..0.2] run tag @s remove efalse
    #wall
execute as @e[tag=animation-bd,distance=..0.2] run tag @s remove enone
execute as @e[tag=animation-bd,distance=..0.2] run tag @s remove elow
execute as @e[tag=animation-bd,distance=..0.2] run tag @s remove etall