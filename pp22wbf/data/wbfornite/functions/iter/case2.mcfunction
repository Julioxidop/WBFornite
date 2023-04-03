
worldborder add -0.1
scoreboard players remove .toreduce wbdata 100
execute if score .toreduce wbdata matches 100..999 run function wbfornite:iter/case2
execute if score .toreduce wbdata matches 1..99 run function wbfornite:iter/casesel