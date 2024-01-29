scoreboard objectives add init dummy
execute unless score const init matches 1 run schedule function xpb:init 10s
worldborder damage amount 1
worldborder damage buffer 5
scoreboard objectives add xpb trigger
scoreboard objectives add xpb-crafting trigger
scoreboard objectives add xpb-border trigger