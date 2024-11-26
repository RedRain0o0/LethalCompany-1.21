#say title
bossbar set lcmc:player.transmitter name {"nbt":"title.output","storage":"lcmc:transmitter","interpret":true,"font":"lcmc:transmitter"}
#setblock 0 0 0 oak_sign
#$data modify block 0 0 0 front_text.messages[0] set value '$(list_2)'
#data modify storage lcmc:transmitter title.output set from block 0 0 0 front_text.messages[0]
#setblock 0 0 0 air
#$tellraw @a $(list_2)
#function tl:title_private/show_title/4 with storage lcmc:transmitter title
scoreboard players add iteration lcmc.ship.transmitter 1
scoreboard players add stringLength lcmc.ship.transmitter 1
execute if score iteration lcmc.ship.transmitter = stringLength lcmc.ship.transmitter.math run scoreboard players set endTimer lcmc.ship.transmitter 22
execute if score iteration lcmc.ship.transmitter = stringLength lcmc.ship.transmitter.math run scoreboard players set inProgress lcmc.ship.transmitter 0
execute if score iteration lcmc.ship.transmitter matches 9.. run scoreboard players set endTimer lcmc.ship.transmitter 22
execute if score iteration lcmc.ship.transmitter matches 9.. run scoreboard players set inProgress lcmc.ship.transmitter 0