execute if score inProgress lcmc.ship.transmitter matches 1 run function tl:title_private/show_title/1
execute if score endTimer lcmc.ship.transmitter matches 1 run function tl:clear
execute if score endTimer lcmc.ship.transmitter matches 6 as @a at @s run playsound lcmc:player.signal_transmitter.finish player @s ~ ~ ~
execute if score endTimer lcmc.ship.transmitter matches 1.. run scoreboard players remove endTimer lcmc.ship.transmitter 1