#save _timer
function wbfornite:calcs/save

#add 1 to match
scoreboard players add .b _iters 1

#get time interval between iters
scoreboard players operation .itertime wbdata = .b _timer
scoreboard players operation .itertime wbdata /= .b _iters

#get time in the interval when the reduction start
scoreboard players operation .redtime wbdata = .b _reductionpercent
scoreboard players operation .redtime wbdata *= .itertime wbdata
scoreboard players operation .redtime wbdata /= 100 holder1


#set next iter and reduction
scoreboard players operation .nextiter wbdata = .b _timer
function wbfornite:calcs/set_timers

#remove 1 to match
scoreboard players remove .b _iters 1

#get blocks to reduce in the reduction
scoreboard players operation .blocksred wbdata = .b _startsize
scoreboard players operation .blocksred wbdata -= .b _finalsize
scoreboard players operation .blocksred wbdata /= .b _iters

#get blocks or fraction reduced in 1 sec (x1000)
scoreboard players operation .1secblocks wbdata = .blocksred wbdata
scoreboard players operation .1secblocks wbdata *= 1000 holder1
scoreboard players operation .1secblocks wbdata /= .redtime wbdata

#start
function wbfornite:modify/start

#start timer
function wbfornite:timer