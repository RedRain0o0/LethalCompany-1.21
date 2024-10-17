execute if data entity @s listener.event run function lcmc:enemy/logic/clear_kill_event
execute if score @s lcmc.enemy.listenerLogic matches 0 run data modify entity @s Brain.memories."minecraft:vibration_cooldown".ttl set value 0L
execute if score @s lcmc.enemy.listenerLogic matches 0 run scoreboard players reset @s lcmc.enemy.listenerLogic
scoreboard players remove @s lcmc.enemy.listenerLogic 1