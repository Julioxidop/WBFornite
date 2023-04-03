#set value
scoreboard players operation .toreduce wbdata = .1secblocks wbdata

#do case
function wbfornite:iter/casesel

scoreboard players remove .reduction wbdata 1