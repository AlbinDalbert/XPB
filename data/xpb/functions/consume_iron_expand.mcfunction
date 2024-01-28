# if the player has 10 level
execute if score @s lvl >= const iron_strength run worldborder add 10
execute if score @s lvl >= const iron_strength run xp add @s -10 levels
execute if score @s lvl >= const iron_strength run execute as @a[scores={iron_xpb_delay=1..,honey_drink=1..}] at @s run tellraw @a [{"selector":"@s","color":"green"},{"text":" Just drank a ", "color": "white"},{"text":"Iron Xpansion Posion","bold":true,"italic":true,"color":"gray"}]
execute if score @s lvl >= const iron_strength run schedule function xpb:print_border_size 1s
execute if score @s lvl >= const iron_strength run execute as @s run summon firework_rocket ~ ~ ~ {LifeTime:15,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:4,Flicker:0,Trail:0,Colors:[I;2651799,11250603,15790320],FadeColors:[I;2651799,11250603,15790320]}]}}}}
# if the player doesn't have 10 levels
execute if score @s lvl < const iron_strength run loot give @s loot xpb:iron_xpb_potion
execute if score @s lvl < const iron_strength run clear @s glass_bottle 1