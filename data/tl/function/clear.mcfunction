scoreboard players set inProgress lcmc.ship.transmitter 0
bossbar set lcmc:player.transmitter visible false
bossbar set lcmc:player.transmitter name {"text":""}
data remove storage lcmc:transmitter title.list_1
data remove storage lcmc:transmitter title.list_2
execute as @a at @s run playsound lcmc:player.signal_transmitter.finish player @s ~ ~ ~