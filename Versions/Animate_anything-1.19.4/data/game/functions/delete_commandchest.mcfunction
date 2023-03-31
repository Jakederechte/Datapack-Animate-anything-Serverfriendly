#depends ongame:delete-bd

tag @s add remove

execute unless score @e[type=marker,tag=commandchest,limit=1,tag=!remove] animations-id = @e[type=marker,limit=1,tag=remove] animations-id run tellraw @a[distance=..5] {"text":"Command chest and all related blocks removed","color":"dark_red","bold":true}
execute unless entity @e[type=marker,tag=commandchest,limit=1,tag=!remove] run tellraw @a[distance=..5] {"text":"Command chest and all related blocks removed","color":"dark_red","bold":true}
execute if score @e[type=marker,tag=commandchest,limit=1,tag=!remove] animations-id = @e[type=marker,limit=1,tag=remove] animations-id run tellraw @a[distance=..5] {"text":"Command chest removed","color":"dark_red","bold":true}

execute unless score @e[type=marker,tag=commandchest,limit=1,tag=!remove] animations-id = @e[type=marker,limit=1,tag=remove] animations-id as @e[tag=animation-bd,type=block_display] if score @s animations-id = @e[type=marker,limit=1,tag=remove] animations-id at @s run function game:delete_bd

execute unless entity @e[type=marker,tag=commandchest,limit=1,tag=!remove] as @e[tag=animation-bd,type=block_display] if score @s animations-id = @e[type=marker,limit=1,tag=remove] animations-id at @s run function game:delete_bd


kill @s