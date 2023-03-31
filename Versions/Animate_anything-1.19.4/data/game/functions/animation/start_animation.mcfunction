#depends on game:animation/animation/slot0

tag @s add 0a
tag @s add running
tag @s add powered
execute as @e[tag=animation-bd] at @s if score @s animations-id = @e[tag=commandchest,tag=running,tag=0a,limit=1] animations-id if block ~ ~ ~ barrier run setblock ~ ~ ~ air

execute as @e[tag=commandchest] if score @s animations-id = @e[tag=commandchest,tag=running,tag=0a,limit=1] animations-id run tag @s add blocked

function game:animation/animation/slot0