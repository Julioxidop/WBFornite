#Only run when the actual wb is the same as _startsize
execute store result score .b holder1 run worldborder get
execute unless score .b holder1 = .b _startsize run tellraw @p ["",{"text":"[Error] ","bold":true,"color":"dark_red"},"Antes de empezar se necesita que el score de .b en _startsize (",{"score":{"name":".b","objective":"_startsize"},"color":"gold"},") y el tamaño del worldborder (",{"score":{"name":".b","objective":"holder1"},"color":"gold"},") sean los mismos."]
execute if score .b holder1 = .b _startsize run function wbfornite:calcs/precalc