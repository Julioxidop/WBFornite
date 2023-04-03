#get minutes to start the reduction
scoreboard players operation .minutes wbdata = .holderred wbdata
scoreboard players operation .minutes wbdata /= 60 holder1

#get seconds to start the reduction
scoreboard players operation .holdermin wbdata = .minutes wbdata
scoreboard players operation .holdermin wbdata *= 60 holder1
scoreboard players operation .seconds wbdata = .holderred wbdata
scoreboard players operation .seconds wbdata -= .holdermin wbdata

#Say when the next reduction start
execute if score .minutes wbdata matches 1.. run tellraw @a ["",{"text":"El borde comenzará a redecirse en ","bold":true,"color":"red"},{"score":{"name":".minutes","objective":"wbdata"},"bold":true,"color":"gold"},{"text":" minutos y ","bold":true,"color":"red"},{"score":{"name":".seconds","objective":"wbdata"},"bold":true,"color":"gold"},{"text":" segundos.","bold":true,"color":"red"}]
execute if score .minutes wbdata matches 0 run tellraw @a ["",{"text":"El borde comenzará a redecirse en ","bold":true,"color":"red"},{"score":{"name":".seconds","objective":"wbdata"},"bold":true,"color":"gold"},{"text":" segundos.","bold":true,"color":"red"}]



