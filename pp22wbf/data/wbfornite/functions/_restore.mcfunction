scoreboard players set .nextiter wbdata 0
scoreboard players set .nextred wbdata 0
scoreboard players set .itertime wbdata 0
scoreboard players set .blocksred wbdata 0
scoreboard players set .1secblocks wbdata 0
scoreboard players set .reduction wbdata 0
scoreboard players set .toreduce wbdata 0
scoreboard players set .redtime wbdata 0
scoreboard players set .minutes wbdata 0
scoreboard players set .seconds wbdata 0
scoreboard players set .holderred wbdata 0
scoreboard players set .holderredtimerem wbdata 0
scoreboard players set .holderitertimerem wbdata 0
scoreboard players set .holderblocksrem wbdata 0
scoreboard players set .redtimerem wbdata 0
scoreboard players set .itertimerem wbdata 0
scoreboard players set .blocksrem wbdata 0
scoreboard players operation .b _timer = .timer saver1
scoreboard players operation .b _iters = .iters saver1
scoreboard players operation .b _reductionpercent = .percent saver1
say restore completed
