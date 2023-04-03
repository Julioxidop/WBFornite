#say when border starts to reduce
execute if score .nextiter wbdata = .b _timer run function wbfornite:modify/iter

#set next iter and iter reduction
execute if score .nextred wbdata = .b _timer run function wbfornite:iter/prered

#do reduction
execute if score .reduction wbdata matches 1.. run function wbfornite:iter/case

#1 sec
execute if score .b _timer matches 1.. run scoreboard players remove .b _timer 1
tellraw @a {"score":{"name":".b","objective":"_timer"},"bold":true,"color":"dark_gray"}
execute if score .b _timer matches 0 run function wbfornite:modify/final
execute if score .b _timer matches 1.. if score #enabled wbdata matches 1 run schedule function wbfornite:timer 1s
