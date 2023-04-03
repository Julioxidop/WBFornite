scoreboard objectives add _timer dummy
scoreboard objectives add _iters dummy
scoreboard objectives add _startsize dummy
scoreboard objectives add _finalsize dummy
scoreboard objectives add _reductionpercent dummy

scoreboard objectives add wbdata dummy
scoreboard players set #enabled wbdata 1

scoreboard objectives add holder1 dummy
scoreboard players set 100 holder1 100
scoreboard players set 1000 holder1 1000
scoreboard players set 60 holder1 60

scoreboard objectives add saver1 dummy

function wbfornite:_reset

say wbfornite loaded


