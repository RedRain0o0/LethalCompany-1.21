data modify storage lcmc:listener_event_clear game_event set from entity @s listener.event.game_event
tellraw @a {"translate":"lcmc.listener.heard","with":[{"selector":"@s"},{"nbt": "game_event", "storage": "lcmc:listener_event_clear"}]}
execute store success score killEvent lcmc.enemy.listenerLogic run data modify storage lcmc:listener_event_clear game_event set value "minecraft:entity_die"
execute if score killEvent lcmc.enemy.listenerLogic matches 0 run data remove entity @s listener
scoreboard players reset * lcmc.enemy.listenerLogic
scoreboard players set @s lcmc.enemy.listenerLogic 2