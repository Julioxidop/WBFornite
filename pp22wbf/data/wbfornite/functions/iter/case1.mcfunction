
worldborder add -1
scoreboard players remove .toreduce wbdata 1000
execute if score .toreduce wbdata matches 1000.. run function wbfornite:iter/case1
execute if score .toreduce wbdata matches 1..999 run function wbfornite:iter/casesel