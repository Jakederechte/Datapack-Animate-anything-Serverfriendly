#depends on game:book/give_book

execute if score @s animations-id matches 2.. run scoreboard players remove @s animations-id 1

function game:book/give_book