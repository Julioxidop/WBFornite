
worldborder add -0.01
scoreboard players remove .toreduce wbdata 10
execute if score .toreduce wbdata matches 10..99 run function wbfornite:iter/case3
execute if score .toreduce wbdata matches 1..9 run function wbfornite:iter/case4