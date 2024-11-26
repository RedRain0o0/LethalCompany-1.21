$data modify storage lcmc:disposable string.list_value set string storage lcmc:disposable string.text $(previousindex) $(currentindex)
data modify storage lcmc:disposable string.list append from storage lcmc:disposable string.list_value

scoreboard players add stringIndex_old lcmc.ship.transmitter.math 1
scoreboard players add stringIndex lcmc.ship.transmitter.math 1

execute store result storage lcmc:disposable string.previousindex int 1 run scoreboard players get stringIndex_old lcmc.ship.transmitter.math
execute store result storage lcmc:disposable string.currentindex int 1 run scoreboard players get stringIndex lcmc.ship.transmitter.math

execute if score stringIndex lcmc.ship.transmitter.math < stringLength.plusone lcmc.ship.transmitter.math run function tl:title_private/split_string with storage lcmc:disposable string