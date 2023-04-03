
#set next iter start
scoreboard players operation .nextiter wbdata -= .itertime wbdata

#set next reduction start
scoreboard players operation .holderred wbdata = .itertime wbdata
scoreboard players operation .holderred wbdata -= .redtime wbdata
scoreboard players operation .nextred wbdata = .nextiter wbdata
scoreboard players operation .nextred wbdata -= .holderred wbdata