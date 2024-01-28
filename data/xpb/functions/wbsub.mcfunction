execute store result score const current_border_size run worldborder get
scoreboard players operation @s old_lvl /= const dead_sub
scoreboard players operation const new_border_size = const current_border_size
scoreboard players operation const new_border_size -= @s old_lvl

title @a title [{"text": " -","strikethrough": false,"bold":true,"color":"red","italic": true,"scale":10},{"score":{"objective": "old_lvl", "name": "@s"},"bold":true,"color":"red","italic": true, "strikethrough": false,"scale":7}]
title @a subtitle [{"selector": "@p","bold":true,"color":"yellow","italic": true,"strikethrough": false,"underlined": false,"scale":7},{"text": " Died, we lost ","bold":true,"color":"yellow","italic":true,"underlined":false,"scale":7}, {"score":{"objective": "old_lvl", "name": "@s"},"bold":true,"color":"red","italic": true, "strikethrough": false,"scale":12},{"text": " Blocks","bold":true,"color":"yellow","italic":true,"underlined":false,"scale":7}]

# scoreboard players set @s current_border_size 10
# worldborder set 1
tellraw @a ["",{"selector":"@s","color":"red"}," Just dies, and we lost ",{"score":{"name":"@s","objective":"old_lvl"},"bold":true,"italic":true,"color":"red"}]
function xpb:wbsubrec
tellraw @a ["Border Is Now: ",{"score":{"name":"const","objective":"current_border_size"},"color":"yellow"}]