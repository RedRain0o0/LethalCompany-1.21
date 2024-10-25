
data modify storage lcmc:transmitter title.list_2 append from storage lcmc:transmitter title.list_1[0]

data remove storage lcmc:transmitter title.list_1[0]

#data modify storage lcmc:transmitter title.list_2 append value "_"

data modify storage lcmc:transmitter title.output set from storage lcmc:transmitter title.list_2

function tl:title_private/show_title/3 with storage lcmc:transmitter title
#data remove storage lcmc:transmitter title.list_2[-1]

execute as @a[tag=lcmc.player.Alive] at @s run playsound lcmc:player.signal_transmitter.type player @s ~ ~ ~