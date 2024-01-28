execute as @a if score @s lvl > @s old_lvl run function xpb:xpup
execute as @a[scores={lvl=0,old_lvl=1..}] run function xpb:xpdead
function xpb:check_consumables
function xpb:commands
scoreboard players operation @a old_lvl = @a lvl
execute store result score const current_border_size run worldborder get
