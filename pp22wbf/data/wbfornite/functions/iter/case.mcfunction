#set value
scoreboard players operation .toreduce wbdata = .1secblocks wbdata

#do case
execute if score .case wbdata matches 1 run function wbfornite:iter/case1
execute if score .case wbdata matches 2 run function wbfornite:iter/case2
execute if score .case wbdata matches 3 run function wbfornite:iter/case3

scoreboard players remove .reduction wbdata 1