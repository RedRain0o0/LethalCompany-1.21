tag @s add lcmc.player.Player
tag @s add lcmc.player.Alive
tag @s add lcmc.ship.map.CanTarget
tag @s add lcmc.ship.teleporter.CanTeleport
tag @s add lcmc.trap.landmine.CanDetonate
attribute @s minecraft:knockback_resistance base set 1
attribute @s minecraft:entity_interaction_range base set 0.25
effect give @s resistance infinite 255 true
effect give @s invisibility infinite 255 true
item replace entity @s armor.feet with chainmail_boots
item replace entity @s armor.body with chainmail_chestplate
item replace entity @s armor.head with carved_pumpkin[custom_model_data=1]
scoreboard players set @s lcmc.player.fear 0
scoreboard players set @s lcmc.player.insanity 0
scoreboard players add playerCount lcmc.game.gameState 1
scoreboard players add maxTarget lcmc.ship.map 1