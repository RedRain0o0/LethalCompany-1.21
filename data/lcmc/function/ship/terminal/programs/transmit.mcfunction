scoreboard players set ranProgram lcmc.ship.terminal 1
scoreboard players set inProgress lcmc.ship.transmitter 1

bossbar set lcmc:player.transmitter visible true
bossbar set lcmc:player.transmitter.decoration visible true

execute as @a at @s run playsound lcmc:player.signal_transmitter.begin player @s ~ ~ ~

data modify storage lcmc:transmitter text set from storage lcmc:disposable cmd.arg1

# split_string init
    scoreboard objectives remove lcmc.ship.transmitter.math
    scoreboard objectives add lcmc.ship.transmitter.math dummy
        execute store result score stringLength lcmc.ship.transmitter.math run data get storage lcmc:transmitter text
        execute store result score stringLength.plusone lcmc.ship.transmitter.math run data get storage lcmc:transmitter text
        scoreboard players add stringLength.plusone lcmc.ship.transmitter.math 1
        scoreboard players set stringIndex_old lcmc.ship.transmitter.math 0
        scoreboard players add stringIndex lcmc.ship.transmitter.math 1

    data remove storage lcmc:disposable string
        execute store result storage lcmc:disposable string.previousindex int 1 run scoreboard players get stringIndex_old lcmc.ship.transmitter.math
        execute store result storage lcmc:disposable string.currentindex int 1 run scoreboard players get stringIndex lcmc.ship.transmitter.math
        execute store result storage lcmc:disposable string.length int 1 run data get storage lcmc:transmitter text
        execute store result score stringLength lcmc.ship.transmitter.math run data get storage lcmc:transmitter text
        data modify storage lcmc:disposable string.text set from storage lcmc:transmitter text


execute as @s at @s run function lcmc:ship/terminal/sub/transmit/split_string with storage lcmc:disposable string
data modify storage lcmc:transmitter title.list_1 set from storage lcmc:disposable string.list
execute store result score timer lcmc.ship.transmitter run random value 11..16
scoreboard players set stringLength lcmc.ship.transmitter 1
scoreboard players reset iteration lcmc.ship.transmitter

data modify entity @n[tag=lcmc.ship.terminal.OutputScreen] text set value '{"text":"--------------------------------------------\\n","color":"#00FF00","extra":[{"translate":"lcmc.terminal.transmitResult"}]}'
data modify entity @n[tag=lcmc.ship.terminal.OutputScreen] transformation.translation[1] set value 1.6971f