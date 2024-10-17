data remove entity @s interaction

tag @e[tag=lcmc.ship.map.Target] remove lcmc.ship.map.Target
scoreboard players remove @e[scores={lcmc.ship.map.nextMonitor=0..}] lcmc.ship.map.nextMonitor 1
execute as @e[tag=lcmc.ship.map.CanTarget] if score @s lcmc.ship.map.nextMonitor matches ..0 run scoreboard players operation @s lcmc.ship.map.nextMonitor = maxTargets lcmc.ship.map

tag @e[scores={lcmc.ship.map.nextMonitor=1}] add lcmc.ship.map.Target

data merge entity @n[tag=MonitorName] {text:'{"translate":"lcmc.monitor.monitoring","with":[{"selector":"@n[tag=lcmc.ship.map.Target]"}]}'}