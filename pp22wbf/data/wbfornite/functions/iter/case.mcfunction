#set value
scoreboard players operation .toreduce wbdata = .1secblocks wbdata
execute if score .blocksrem wbdata matches 1.. run scoreboard players add .toreduce wbdata 1000
execute if score .blocksrem wbdata matches 1.. run scoreboard players remove .blocksrem wbdata 1000

#do case
function wbfornite:iter/casesel

scoreboard players remove .reduction wbdata 1