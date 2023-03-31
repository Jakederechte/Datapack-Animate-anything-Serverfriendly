#depends on

tag @s add end

tag @s remove 0a
tag @s remove 1a
tag @s remove 2a
tag @s remove 3a
tag @s remove 4a
tag @s remove 5a
tag @s remove 6a
tag @s remove 7a
tag @s remove 8a
tag @s remove 9a
tag @s remove 10a
tag @s remove 11a
tag @s remove 12a
tag @s remove 13a
tag @s remove 14a
tag @s remove 15a
tag @s remove 16a
tag @s remove 17a
tag @s remove 18a
tag @s remove 19a
tag @s remove 20a
tag @s remove 21a
tag @s remove 22a
tag @s remove 23a
tag @s remove 24a
tag @s remove 25a
tag @s remove 26a

tag @s remove 0t
tag @s remove 1t
tag @s remove 2t
tag @s remove 3t
tag @s remove 4t
tag @s remove 5t
tag @s remove 6t
tag @s remove 7t
tag @s remove 8t
tag @s remove 9t
tag @s remove 10t
tag @s remove 11t
tag @s remove 12t
tag @s remove 13t
tag @s remove 14t
tag @s remove 15t
tag @s remove 16t
tag @s remove 17t
tag @s remove 18t
tag @s remove 19t
tag @s remove 20t
tag @s remove 21t
tag @s remove 22t
tag @s remove 23t
tag @s remove 24t
tag @s remove 25t
tag @s remove 26t

execute as @e[tag=animation-bd] at @s if score @s animations-id = @e[tag=commandchest,tag=running,tag=end,limit=1] animations-id at @s if block ~ ~ ~ air run setblock ~ ~ ~ barrier

execute as @e[tag=commandchest] if score @s animations-id = @e[tag=commandchest,tag=running,tag=end,limit=1] animations-id run tag @s remove blocked

tag @s remove running
tag @s remove end

