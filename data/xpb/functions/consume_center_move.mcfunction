# set world border center
schedule function xpb:recenter_execution 10s
schedule function xpb:print_border_size 11s
title @a title {"text": "BORDER MOVEMENT!!","bold":true,"color":"aqua","italic":true,"underlined":true,"scale":10}
title @a subtitle {"text": "10 seconds remaining until recentering","bold":true,"color":"green","italic":true,"underlined":true,"scale":10}

effect give @s blindness 13
effect give @s nausea 13 1
effect give @s slowness 13 5
execute as @s run summon firework_rocket ~ ~ ~ {LifeTime:60,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:4,Flicker:0,Trail:1,Colors:[I;11743532,2437522,8073150,2651799,14188952,4312372,14602026,6719955,12801229,15435844,15790320],FadeColors:[I;8073150,2651799,15790320]},{Type:3,Flicker:0,Trail:0,Colors:[I;3887386,4312372,15790320],FadeColors:[I;3887386,4312372,15790320]}]}}}}