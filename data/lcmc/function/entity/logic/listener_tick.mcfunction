execute if data entity @s listener.event run function lcmc:entity/logic/clear_kill_event
execute if score @s lcmc.entity.listenerLogic matches 0 run data modify entity @s Brain.memories."minecraft:vibration_cooldown".ttl set value 0L
execute if score @s lcmc.entity.listenerLogic matches 0 run scoreboard players reset @s lcmc.entity.listenerLogic
scoreboard players remove @s lcmc.entity.listenerLogic 1