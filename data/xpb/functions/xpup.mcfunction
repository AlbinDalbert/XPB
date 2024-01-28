title @a actionbar {"text": "+1","bold":true,"color":"green","italic":true,"underlined":false,"scale":1}

execute as @a run scoreboard players operation @s lvl_temp = @s lvl
scoreboard players operation @a lvl_temp %= const size_message_freq
execute as @a[scores={lvl_temp=0}] run tellraw @a ["Border Is Now: ",{"score":{"name":"const","objective":"current_border_size"},"color":"yellow"}]

scoreboard players add const current_border_size 1
worldborder add 1