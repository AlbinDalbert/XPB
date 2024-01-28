scoreboard players remove const current_border_size 1
# execute if score const current_border_size >= const new_border_size unless score const current_border_size <= const min_border_size run tell @a "decrease"
execute if score const current_border_size >= const new_border_size unless score const current_border_size <= const min_border_size run worldborder add -1
execute if score const current_border_size >= const new_border_size unless score const current_border_size <= const min_border_size run function xpb:wbsubrec