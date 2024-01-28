execute as @a if score @s death > @s old_death run function xpb:wbsub
scoreboard players operation @a old_death = @a death