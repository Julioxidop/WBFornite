
#set next iter start
scoreboard players operation .nextiter wbdata -= .itertime wbdata
execute if score .itertimerem wbdata matches 1.. run scoreboard players add .nextiter wbdata 1
execute if score .itertimerem wbdata matches 1.. run scoreboard players remove .itertimerem wbdata 1

#set next reduction start
scoreboard players operation .holderred wbdata = .itertime wbdata
scoreboard players operation .holderred wbdata -= .redtime wbdata
scoreboard players operation .nextred wbdata = .nextiter wbdata
scoreboard players operation .nextred wbdata -= .holderred wbdata
execute if score .redtimerem wbdata matches 1.. run scoreboard players add .nextred wbdata 1
execute if score .redtimerem wbdata matches 1.. run scoreboard players remove .redtimerem wbdata 1