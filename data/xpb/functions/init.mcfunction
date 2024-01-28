tellraw @a {"text":"welcome to this xp boarder expansion"}
effect give @a minecraft:resistance 100 100
xp set @a 0 levels
scoreboard objectives add init dummy

# Detect eating the base item
scoreboard objectives add honey_drink minecraft.used:minecraft.honey_bottle
# Delay for detecting if player has recently held custom item
scoreboard objectives add iron_xpb_delay dummy
# Delay for detecting if player has recently held custom item
scoreboard objectives add diamond_xpb_delay dummy

scoreboard objectives add dead_sub dummy "dead_sub"
# CONF set the penelty for death, how much the border lowers on death
# default: 1
# the amount of levels the player looses devided by this number, 
# boarder size -= <old levels>/dead_sub 
scoreboard players set const dead_sub 1
scoreboard objectives add min_border_size dummy "minimum border size"
scoreboard players set const min_border_size 9
scoreboard objectives add size_message_freq dummy "size message frequency"
scoreboard players set const size_message_freq 10
scoreboard objectives add iron_strength dummy "iron strenth"
scoreboard players set const iron_strength 10
scoreboard objectives add lvl_temp dummy

scoreboard objectives add current_border_size dummy "current border size"
scoreboard objectives add new_border_size dummy "new_border_size"
scoreboard objectives add border_help dummy "border_help"
scoreboard objectives add old_lvl dummy "old lvl"
scoreboard objectives add lvl level "lvl"
scoreboard objectives add old_death dummy "old death"
scoreboard objectives add death deathCount "death"

scoreboard objectives setdisplay sidebar
scoreboard players operation @a old_lvl = @a lvl
scoreboard players operation @a old_death = @a death
gamemode spectator @a
worldborder set 10000
function countdown:init_countdown
schedule function xpb:centerwb 90s
tellraw @a {"text":"loading done!"}
scoreboard players set const init 1