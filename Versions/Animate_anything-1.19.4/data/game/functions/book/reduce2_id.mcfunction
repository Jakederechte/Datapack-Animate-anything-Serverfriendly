#depends on game:book/give_book

execute if score @s animations-id matches 11.. run scoreboard players remove @s animations-id 10

function game:book/give_book