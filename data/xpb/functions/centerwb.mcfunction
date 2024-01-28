
gamemode survival @a
# set world border center
execute as @p at @s in minecraft:overworld align xz run worldborder center ~.5 ~.5
execute as @p at @s in minecraft:the_nether align xz run worldborder center ~.5 ~.5
execute as @p at @s in minecraft:the_end align xz run worldborder center ~.5 ~.5
# set world spawn point
execute as @p at @s in minecraft:overworld align xyz run setworldspawn ~.5 ~.5 ~.5
execute as @p at @s in minecraft:the_nether align xyz run setworldspawn ~.5 ~.5 ~.5
execute as @p at @s in minecraft:the_end align xyz run setworldspawn ~.5 ~.5 ~.5

title @a title {"text": "Good Luck","bold":true,"color":"green","italic":true,"underlined":false,"scale":10}
title @a subtitle {"text": "Have Fun","bold":true,"color":"red","italic":true,"underlined":false,"scale":10}
scoreboard players set const current_border_size 9
worldborder set 9