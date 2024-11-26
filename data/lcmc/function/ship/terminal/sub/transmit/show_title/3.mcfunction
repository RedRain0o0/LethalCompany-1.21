bossbar set lcmc:player.transmitter name {"nbt":"title.output","storage":"lcmc:transmitter","interpret":true,"font":"lcmc:transmitter"}
scoreboard players add iteration lcmc.ship.transmitter 1
scoreboard players add stringLength lcmc.ship.transmitter 1
execute if score iteration lcmc.ship.transmitter = stringLength lcmc.ship.transmitter.math run scoreboard players set endTimer lcmc.ship.transmitter 22
execute if score iteration lcmc.ship.transmitter = stringLength lcmc.ship.transmitter.math run scoreboard players set inProgress lcmc.ship.transmitter 0
execute if score iteration lcmc.ship.transmitter matches 9.. run scoreboard players set endTimer lcmc.ship.transmitter 22
execute if score iteration lcmc.ship.transmitter matches 9.. run scoreboard players set inProgress lcmc.ship.transmitter 0