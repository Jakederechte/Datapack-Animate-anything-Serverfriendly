#depends on

scoreboard objectives add animations-id dummy
scoreboard players set counting-bd animations-id 0
scoreboard players set counting-cc animations-id 0

execute as @a run function game:book/give_book

tellraw @a {"text": "All at once!", "color": "#00ff44"}

