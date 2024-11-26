
data modify storage lcmc:transmitter title.list_2 append from storage lcmc:transmitter title.list_1[0]

data remove storage lcmc:transmitter title.list_1[0]

data modify storage lcmc:transmitter title.output set from storage lcmc:transmitter title.list_2

execute if score stringLength lcmc.ship.transmitter matches 1 run data modify storage lcmc:transmitter title.output append value "        "
execute if score stringLength lcmc.ship.transmitter matches 2 run data modify storage lcmc:transmitter title.output append value "       "
execute if score stringLength lcmc.ship.transmitter matches 3 run data modify storage lcmc:transmitter title.output append value "      "
execute if score stringLength lcmc.ship.transmitter matches 4 run data modify storage lcmc:transmitter title.output append value "     "
execute if score stringLength lcmc.ship.transmitter matches 5 run data modify storage lcmc:transmitter title.output append value "    "
execute if score stringLength lcmc.ship.transmitter matches 6 run data modify storage lcmc:transmitter title.output append value "   "
execute if score stringLength lcmc.ship.transmitter matches 7 run data modify storage lcmc:transmitter title.output append value "  "
execute if score stringLength lcmc.ship.transmitter matches 8 run data modify storage lcmc:transmitter title.output append value " "

function lcmc:ship/terminal/sub/transmit/show_title/3 with storage lcmc:transmitter title
#data remove storage lcmc:transmitter title.list_2[-1]

execute as @a[tag=lcmc.player.Alive] at @s run playsound lcmc:player.signal_transmitter.type player @s ~ ~ ~