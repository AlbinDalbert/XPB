# init commands
scoreboard players enable @a xpb
scoreboard players enable @a xpb-border
scoreboard players enable @a xpb-crafting

# define commands
execute as @a[scores={xpb=1..}] at @s run tellraw @p ["","\n","-------------------------","\n",{"text":"Welcome to XPB!","bold":true,"italic":true},"\n","TL;DR You level up experience, the border grows, special potions for manipulating the border","\n","For information about specific parts of this mode, use one of the following commands","\n",{"text":"/trigger xpb","bold":true,"underlined":true,"color":"yellow","clickEvent":{"action":"suggest_command","value":"/trigger xpb-crafting"}},"\n",{"text":"/trigger xpb-border","bold":true,"underlined":true,"color":"yellow","clickEvent":{"action":"suggest_command","value":"/trigger xpb-crafting"}},"\n",{"text":"/trigger xpb-crafting","bold":true,"underlined":true,"color":"yellow","clickEvent":{"action":"suggest_command","value":"/trigger xpb-crafting"}},"\n","-------------------------"]
execute as @a[scores={xpb-border=1..}] at @s run tellraw @p ["","\n",{"text":"The Border","bold":true,"italic":true,"underlined":true},"\n","The border will grow 1 block for each level you level up, if you die, the border will shrink back, (loose one block for each level you loose), This is what the Potions are for, they give you a more permanent growth. you kind of \"cash in\" your levels","\n","The borders starting size, (and minimum size) is 9 block.","\n","Multiplayer? Not tested, but should work in theory","\n","\n","Restart? to completely restart, you'll need to change the scoreboard stat \"init\" to 0 for player \"const\"","\n",{"text":"/scoreboard players set const init 0","bold":true,"italic":true},"\n","And then reload the datapack"]
execute as @a[scores={xpb-crafting=1..}] at @s run tellraw @p ["","\n",{"text":"Crafting","bold":true,"underlined":true,"color":"gold"},"\n","There are 2 potions related to the border that can be crafter","\n","\n",{"text":"Iron Xpansion Potion","bold":true,"italic":true,"color":"gray"},"\n","When drinking this potion, you'll loose 10 levels, and the border grows with 10 blocks. This is useful because lower levels are easier to get, and if you die you only loose border progress based on your own level","\n",{"text":"Recipe","bold":true},"\n","| # | G | # |","\n","|   | # |   |","\n","# = Iron Ingot, G = Gold Ingot","\n","\n",{"text":"Diamond ReZenter Potion","bold":true,"italic":true,"color":"aqua"},"\n","This potion will recenter the whole border to your current position, it takes 10 seconds to use and you'll not be able to move during that time","\n",{"text":"Recipe","bold":true},"\n","| # | D | # |","\n","| G | C | G |","\n","| # | G | # |","\n","C = Compass, D = Diamond, # = Copper ingot, G = Gold Ingot"]
# reset commands
scoreboard players set @a xpb 0
scoreboard players set @a xpb-border 0
scoreboard players set @a xpb-crafting 0