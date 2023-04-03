#save _timer
function wbfornite:calcs/save

#add 1 to match
scoreboard players add .b _iters 1

#get time interval between iters
scoreboard players operation .itertime wbdata = .b _timer
scoreboard players operation .itertime wbdata /= .b _iters
        #seconds extra to inject onto iters
scoreboard players operation .holderitertimerem wbdata = .itertime wbdata
scoreboard players operation .holderitertimerem wbdata *= .b _iters
scoreboard players operation .itertimerem wbdata = .b _timer
scoreboard players operation .itertimerem wbdata -= .holderitertimerem wbdata

#get time in the interval when the reduction start
scoreboard players operation .redtime wbdata = .b _reductionpercent
scoreboard players operation .redtime wbdata *= .itertime wbdata
scoreboard players operation .redtime wbdata /= 100 holder1
        #seconds extra to inject onto reds
scoreboard players operation .redtimerem wbdata = .b _reductionpercent
scoreboard players operation .redtimerem wbdata *= .itertime wbdata
scoreboard players operation .holderredtimerem wbdata = .redtime wbdata
scoreboard players operation .holderredtimerem wbdata *= 100 holder1
scoreboard players operation .redtimerem wbdata -= .holderredtimerem wbdata
execute if score .remtimerem wbdata matches 100.. run scoreboard players operation .redtimerem wbdata /= 100 holder1
execute if score .redtimerem wbdata matches 1..99 run scoreboard players set .redtimerem wbdata 1


#set next iter and reduction
scoreboard players operation .nextiter wbdata = .b _timer
function wbfornite:calcs/set_timers

#remove 1 to match
scoreboard players remove .b _iters 1

#get blocks to reduce in the reduction
scoreboard players operation .blocksred wbdata = .b _startsize
scoreboard players operation .blocksred wbdata -= .b _finalsize
scoreboard players operation .blocksred wbdata /= .b _iters
        #blocks extra to inject onto reds
scoreboard players operation .blocksrem wbdata = .b _startsize
scoreboard players operation .blocksrem wbdata -= .b _finalsize
scoreboard players operation .holderblocksrem wbdata = .blocksred wbdata
scoreboard players operation .holderblocksrem wbdata *= .b _iters
scoreboard players operation .blocksrem wbdata -= .holderblocksrem wbdata
scoreboard players operation .blocksrem wbdata *= 1000 holder1

#get blocks or fraction reduced in 1 sec (x1000)
scoreboard players operation .1secblocks wbdata = .blocksred wbdata
scoreboard players operation .1secblocks wbdata *= 1000 holder1
scoreboard players operation .1secblocks wbdata /= .redtime wbdata

#start
function wbfornite:modify/start

#start timer
function wbfornite:timer