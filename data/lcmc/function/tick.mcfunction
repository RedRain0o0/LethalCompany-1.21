tellraw @a[tag=lcmc.player.Debug] "<Server> Begining `tick.mcfunction`"

## Pre Light Logic
execute at @e[type=marker,tag=lcmc.logic.light.LightSpawn] run setblock ~ ~ ~ air
kill @e[type=marker,tag=lcmc.logic.light.LightSpawn]
tellraw @a[tag=lcmc.player.Debug] "<Server> Pre Light Logic in `tick.mcfunction`"

## Item Pickup
#execute as @e[type=armor_stand,tag=lcmc.type.Item,predicate=lcmc:item/kill_hold] run kill @s
tellraw @a[tag=lcmc.player.Debug] "<Server> Item Pickup in `tick.mcfunction`"

effect clear @a[tag=lcmc.player.Player,tag=lcmc.player.Alive] darkness

function lcmc:entity/logic/anger_managment
execute as @e[type=warden,tag=lcmc.entity.Listener] at @s run function lcmc:entity/logic/listener_tick

## Signal Transmitter
execute if score inProgress lcmc.ship.transmitter matches 1 run function lcmc:ship/terminal/sub/transmit/show_title/1
execute if score endTimer lcmc.ship.transmitter matches 1 run function lcmc:ship/terminal/sub/transmit/clear
execute if score endTimer lcmc.ship.transmitter matches 6 as @a at @s run playsound lcmc:player.signal_transmitter.finish player @s ~ ~ ~
execute if score endTimer lcmc.ship.transmitter matches 1.. run scoreboard players remove endTimer lcmc.ship.transmitter 1

## Eyeless Dog Logic
#execute as @e[tag=lcmc.entity.eyelessDog.Listener] unless score @s lcmc.eyelessDog.listenerCooldown matches 1.. run function lcmc:entity/eyelessdog/listener_location
#execute as @e[tag=lcmc.entity.eyelessDog.Listener] if score @s lcmc.eyelessDog.listenerCooldown matches 1.. run scoreboard players remove @s lcmc.eyelessDog.listenerCooldown 1
tellraw @a[tag=lcmc.player.Debug] "<Server> Eyeless Dog Logic in `tick.mcfunction`"

## Coilhead Logic
#execute as @e[type=marker,tag=lcmc.entity.CoilHeadRoot] run function lcmc:entity/coilhead/tick

## Trap Logic
execute as @e[type=item_display,tag=lcmc.trap.LandMine] at @s run function lcmc:trap/landmine/tick

## Terminal Logic
execute if score onMoon lcmc.game.gameState matches 0 unless entity @a[tag=lcmc.ship.terminal.User] as @e[tag=lcmc.ship.Terminal] at @s on target run function lcmc:ship/terminal/open
execute if entity @a[tag=lcmc.ship.terminal.User] as @e[tag=lcmc.ship.Terminal] at @s on target as @s[tag=lcmc.ship.terminal.User] run function lcmc:ship/terminal/keyboard
execute if entity @a[tag=lcmc.ship.terminal.User] run function lcmc:ship/terminal/tick
execute as @e[tag=lcmc.ship.Terminal] at @s on target as @n[tag=lcmc.ship.Terminal] run data remove entity @s interaction

## Player Logic
execute as @a[tag=lcmc.player.Player,tag=lcmc.player.Alive,tag=lcmc.player.Player.1] at @s run function lcmc:player/logic/tick {player: 1}
execute as @a[tag=lcmc.player.Player,tag=lcmc.player.Alive,tag=lcmc.player.Player.2] at @s run function lcmc:player/logic/tick {player: 2}
execute as @a[tag=lcmc.player.Player,tag=lcmc.player.Alive,tag=lcmc.player.Player.3] at @s run function lcmc:player/logic/tick {player: 3}
execute as @a[tag=lcmc.player.Player,tag=lcmc.player.Alive,tag=lcmc.player.Player.4] at @s run function lcmc:player/logic/tick {player: 4}
tellraw @a[tag=lcmc.player.Debug] "<Server> Player Logic in `tick.mcfunction`"
#execute as @e[tag=lcmc.player.corpse.CoiledCorpse] if score @s lcmc.player.coilTimer matches 22 run data merge entity @s {ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":24},count:1,id:"minecraft:rotten_flesh"}]}
#execute as @e[tag=lcmc.player.corpse.CoiledCorpse] if score @s lcmc.player.coilTimer matches 20 run data merge entity @s {ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":22},count:1,id:"minecraft:rotten_flesh"}]}
#execute as @e[tag=lcmc.player.corpse.CoiledCorpse] if score @s lcmc.player.coilTimer matches 18 run data merge entity @s {ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":23},count:1,id:"minecraft:rotten_flesh"}]}
#execute as @e[tag=lcmc.player.corpse.CoiledCorpse] if score @s lcmc.player.coilTimer matches 16 run data merge entity @s {ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":24},count:1,id:"minecraft:rotten_flesh"}]}
#execute as @e[tag=lcmc.player.corpse.CoiledCorpse] if score @s lcmc.player.coilTimer matches 14 run data merge entity @s {ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":23},count:1,id:"minecraft:rotten_flesh"}]}
#execute as @e[tag=lcmc.player.corpse.CoiledCorpse] if score @s lcmc.player.coilTimer matches 4 run data merge entity @s {ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":25},count:1,id:"minecraft:rotten_flesh"}]}
#execute as @e[tag=lcmc.player.corpse.CoiledCorpse,tag=lcmc.player.Corpse] if score @s lcmc.player.coilTimer matches 0 at @s run function lcmc:item/scrap/spawn/coiled_corpse
#execute as @e[tag=lcmc.player.corpse.CoiledCorpse] if score @s lcmc.player.coilTimer matches 1.. run scoreboard players remove @s lcmc.player.coilTimer 1
#bossbar set minecraft:lcmc.player.gui.1 name {"text":"\u0101","font":"lc:inventory","extra":[{"translate":"space.-100","font":"minecraft:default"},{"text":"\u0301","font":"lc:inventory"},{"translate":"space.500","font":"minecraft:default"}]}
execute store result score playerCount lcmc.game.gameState if entity @a
execute if score playerCount lcmc.game.gameState < prevPlayerCount lcmc.game.gameState run function lcmc:player/logic/leave_game
scoreboard players operation prevPlayerCount lcmc.game.gameState = playerCount lcmc.game.gameState

#execute as @a if score @s lcmc.player.leaveGame matches 1.. run function lcmc:player/logic/leave_game

## Water Logic
#execute \
#  as @e[type=#lcmc:can,tag=lcmc.entity.CanDrown] \
#  at @s \
#  run function lcmc:game/water/entity_tick

## Item Logic
function #lcmc:drop_logic

execute as @e[type=armor_stand,tag=lcmc.type.Item] store result score @s lcmc.logic.onGroundCurr run data get entity @s OnGround
execute as @e[type=armor_stand,tag=lcmc.type.Item] unless score @s lcmc.logic.onGroundPrev matches 0..1 run scoreboard players set @s lcmc.logic.onGroundPrev 0
execute as @e[type=armor_stand,tag=lcmc.type.Item] at @s unless score @s lcmc.logic.onGroundCurr = @s lcmc.logic.onGroundPrev run function #lcmc:fall_sound
execute as @e[type=armor_stand,tag=lcmc.type.Item] at @s unless score @s lcmc.logic.onGroundCurr = @s lcmc.logic.onGroundPrev run summon snowball ~ ~ ~
execute as @e[type=armor_stand,tag=lcmc.type.Item] run scoreboard players operation @s lcmc.logic.onGroundCurr >< @s lcmc.logic.onGroundPrev

execute as @e[type=armor_stand,tag=lcmc.item.SoccerBall] if score @s lcmc.item.logic.kickCooldown matches 5 at @s as @a[tag=lcmc.player.logic.ballKicker] run function lcmc:item/scrap/logic/soccer_ball_kick_2
execute as @e[type=armor_stand,tag=lcmc.item.SoccerBall] unless score @s lcmc.item.logic.kickCooldown matches 1.. at @s as @a[tag=lcmc.player.Player,tag=lcmc.player.Alive,distance=.1...75] run function lcmc:item/scrap/logic/soccer_ball_kick
execute as @e[type=armor_stand,tag=lcmc.item.SoccerBall] if score @s lcmc.item.logic.kickCooldown matches 1.. run scoreboard players remove @s lcmc.item.logic.kickCooldown 1


execute as @e[type=armor_stand,tag=lcmc.type.Item,tag=lcmc.item.WhoopeeCushion] at @s as @a[tag=lcmc.player.Player,tag=lcmc.player.Alive,distance=...75] run function lcmc:item/scrap/logic/whoopee_fart
execute as @a[tag=lcmc.player.Alive,tag=lcmc.player.Player] run scoreboard players operation @s lcmc.player.logic.prevWhoopee >< @s lcmc.player.logic.currWhoopee
scoreboard players set @a lcmc.player.logic.currWhoopee 0

execute as @e[tag=lcmc.player.Corpse] unless items entity @s weapon.offhand * run function lcmc:player/logic/grab_corpse

execute as @e[tag=lcmc.type.Item] unless items entity @s weapon.offhand * run kill @s

## Map Logic
execute as @e[tag=lcmc.ship.map.Target] at @s align xyz positioned ~.5 ~.5 ~.5 run function lcmc:ship/map/target_tick
execute as @e[tag=lcmc.ship.map.Marker] at @s unless block ~ ~ ~ #air run function lcmc:ship/map/store_to_map
execute as @e[tag=lcmc.ship.interact.ChangeTarget] at @s on target as @n run function lcmc:ship/map/change_target
execute as @e[tag=lcmc.ship.interact.Teleport] at @s on target as @n run function lcmc:ship/teleporter/teleport
execute if score teleporterCountdown lcmc.ship.teleporter matches 1.. run scoreboard players remove teleporterCountdown lcmc.ship.teleporter 1
execute as @e[tag=lcmc.ship.map.Target,tag=lcmc.ship.teleporter.CanTeleport] at @s if score teleporterCountdown lcmc.ship.teleporter matches 1.. positioned ~ ~1 ~ run function lcmc:ship/teleporter/teleport_effects
execute as @e[tag=lcmc.ship.map.Target,tag=lcmc.ship.teleporter.CanTeleport] at @e[tag=lcmc.ship.Teleporter] if score teleporterCountdown lcmc.ship.teleporter matches 0 run tp @s ~ ~ ~
execute if score teleporterCountdown lcmc.ship.teleporter matches 0 run scoreboard players reset teleporterCountdown lcmc.ship.teleporter

## Light Logic
scoreboard players set hit lcmc.player.logic.raycast 0
scoreboard players set distance lcmc.player.logic.raycast 0
execute as @a[tag=lcmc.player.Player,tag=lcmc.player.Alive,tag=lcmc.player.logic.FlashlightOn] at @s anchored eyes run function lcmc:item/equipment/logic/flashlight/raycast
execute at @e[type=marker,tag=lcmc.item.logic.flashlight.Light.1] if block ~ ~ ~ #lcmc:air_light run setblock ~ ~ ~ light[level=1]
execute at @e[type=marker,tag=lcmc.item.logic.flashlight.Light.2] if block ~ ~ ~ #lcmc:air_light run setblock ~ ~ ~ light[level=2]
execute at @e[type=marker,tag=lcmc.item.logic.flashlight.Light.3] if block ~ ~ ~ #lcmc:air_light run setblock ~ ~ ~ light[level=3]
execute at @e[type=marker,tag=lcmc.item.logic.flashlight.Light.4] if block ~ ~ ~ #lcmc:air_light run setblock ~ ~ ~ light[level=4]
execute at @e[type=marker,tag=lcmc.item.logic.flashlight.Light.5] if block ~ ~ ~ #lcmc:air_light run setblock ~ ~ ~ light[level=5]
execute at @e[type=marker,tag=lcmc.item.logic.flashlight.Light.6] if block ~ ~ ~ #lcmc:air_light run setblock ~ ~ ~ light[level=6]
execute at @e[type=marker,tag=lcmc.item.logic.flashlight.Light.7] if block ~ ~ ~ #lcmc:air_light run setblock ~ ~ ~ light[level=7]
execute at @e[type=marker,tag=lcmc.item.logic.flashlight.Light.8] if block ~ ~ ~ #lcmc:air_light run setblock ~ ~ ~ light[level=8]
execute at @e[type=marker,tag=lcmc.item.logic.flashlight.Light.9] if block ~ ~ ~ #lcmc:air_light run setblock ~ ~ ~ light[level=9]
execute at @e[type=marker,tag=lcmc.item.logic.flashlight.Light.10] if block ~ ~ ~ #lcmc:air_light run setblock ~ ~ ~ light[level=10]
execute at @e[type=marker,tag=lcmc.item.logic.flashlight.Light.11] if block ~ ~ ~ #lcmc:air_light run setblock ~ ~ ~ light[level=11]
execute at @e[type=marker,tag=lcmc.item.logic.flashlight.Light.12] if block ~ ~ ~ #lcmc:air_light run setblock ~ ~ ~ light[level=12]
execute at @e[type=marker,tag=lcmc.item.logic.flashlight.Light.13] if block ~ ~ ~ #lcmc:air_light run setblock ~ ~ ~ light[level=13]
execute at @e[type=marker,tag=lcmc.item.logic.flashlight.Light.14] if block ~ ~ ~ #lcmc:air_light run setblock ~ ~ ~ light[level=14]
execute at @e[type=marker,tag=lcmc.item.logic.flashlight.Light.15] if block ~ ~ ~ #lcmc:air_light run setblock ~ ~ ~ light[level=15]

## Game Logic
#execute if score onMoon lcmc.game.gameState matches 1 run function lcmc:building/tick
execute if score onMoon lcmc.game.gameState matches 1 run function lcmc:game/tick

tellraw @a[tag=Debug] "<Server> Succesfully completed `tick.mcfunction`"