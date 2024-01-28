# iron bottle
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:honey_bottle",tag:{iron_xpb:1b}}}] iron_xpb_delay 4


execute as @a[scores={iron_xpb_delay=1..,honey_drink=1..}] at @s run function xpb:consume_iron_expand

execute as @a[scores={iron_xpb_delay=1..}] unless entity @s[nbt={SelectedItem:{id:"minecraft:honey_bottle",tag:{iron_xpb:1b}}}] run scoreboard players remove @s iron_xpb_delay 1

# diamond bottle
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:honey_bottle",tag:{diamond_xpb:1b}}}] diamond_xpb_delay 4

execute as @a[scores={diamond_xpb_delay=1..,honey_drink=1..}] at @s run tellraw @a [{"selector":"@s","color":"green"},{"text":" Just drank a ", "color": "white"},{"text":"Diamond ReZenter Potion","italic":true, "bold": true, "color":"aqua"}]
execute as @a[scores={diamond_xpb_delay=1..,honey_drink=1..}] at @s run function xpb:consume_center_move

execute as @a[scores={diamond_xpb_delay=1..}] unless entity @s[nbt={SelectedItem:{id:"minecraft:honey_bottle",tag:{diamond_xpb:1b}}}] run scoreboard players remove @s diamond_xpb_delay 1

# resets needs to be last and alone.
scoreboard players reset @a[scores={honey_drink=1..}] honey_drink
