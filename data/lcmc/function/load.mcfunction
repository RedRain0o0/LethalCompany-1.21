tellraw @a[tag=Debug] "<Server> Started loading `load.mcfunction`"



# Player
scoreboard objectives add lcmc.player.twoHand dummy
scoreboard objectives add lcmc.player.health dummy
scoreboard objectives add lcmc.player.healCooldown dummy
scoreboard objectives add lcmc.player.stamina dummy
scoreboard objectives add lcmc.player.weight dummy
scoreboard objectives add lcmc.player.oxygen dummy
scoreboard objectives add lcmc.player.selectedSlot dummy
scoreboard objectives add lcmc.player.previousSlot dummy
scoreboard objectives add lcmc.player.selectedInventorySlot dummy
scoreboard objectives add lcmc.player.scrollCooldown dummy
scoreboard objectives add lcmc.player.fallTime dummy
scoreboard objectives add lcmc.player.fallVelocity dummy
scoreboard objectives add lcmc.player.facing.X dummy
scoreboard objectives add lcmc.player.facing.Y dummy
scoreboard objectives add lcmc.player.moddedFacing.X dummy
scoreboard objectives add lcmc.player.moddedFacing.Y dummy
scoreboard objectives add lcmc.player.coilTimer dummy
scoreboard objectives add lcmc.player.interactTimer dummy
scoreboard objectives add lcmc.player.location dummy
scoreboard objectives add lcmc.player.insanity dummy
scoreboard objectives add lcmc.player.fear dummy
scoreboard objectives add lcmc.player.stoodMine dummy

scoreboard objectives add lcmc.display.apparatusPull dummy

# Traps
scoreboard objectives add lcmc.logic.id dummy
scoreboard objectives add lcmc.trap.landmine.beepTimer dummy
scoreboard objectives add lcmc.trap.landmine.explodeTimer dummy

# Math/Logic
scoreboard objectives add lcmc.logic.onGroundCurr dummy
scoreboard objectives add lcmc.logic.onGroundPrev dummy
scoreboard objectives add lcmc.game.time dummy
scoreboard objectives add lcmc.game.gameState dummy
scoreboard players add time lcmc.game.gameState 0
scoreboard players add onMoon lcmc.game.gameState 0
scoreboard players add indoorSpawnCooldown lcmc.game.gameState 0
scoreboard players add outdoorSpawnCooldown lcmc.game.gameState 0
scoreboard players add daytimeSpawnCooldown lcmc.game.gameState 0
scoreboard players add indoorEntityValue lcmc.game.gameState 0
scoreboard objectives add lcmc.logic.currTick dummy
scoreboard objectives add lcmc.logic.prevTick dummy
scoreboard objectives add lcmc.logic.predictedTick5TicksIntoTheFuture dummy
scoreboard objectives add lcmc.logic.disposable dummy
scoreboard objectives add lcmc.math.numbers dummy
scoreboard players set -1 lcmc.math.numbers -1
scoreboard players set 0 lcmc.math.numbers 0
scoreboard players set 1 lcmc.math.numbers 1
scoreboard players set 2 lcmc.math.numbers 2
scoreboard players set 9 lcmc.math.numbers 9
scoreboard players set 10 lcmc.math.numbers 10
scoreboard players set 50 lcmc.math.numbers 50
scoreboard players set 55 lcmc.math.numbers 55
scoreboard players set 61 lcmc.math.numbers 61
scoreboard players set 90 lcmc.math.numbers 90
scoreboard players set 100 lcmc.math.numbers 100
scoreboard players set 180 lcmc.math.numbers 180
scoreboard players set 900 lcmc.math.numbers 900
scoreboard players set 1000 lcmc.math.numbers 1000
scoreboard players set 1800 lcmc.math.numbers 1800
scoreboard objectives add lcmc.player.math.previousSlot dummy
scoreboard objectives add lcmc.player.math.currentSlot dummy
scoreboard objectives add lcmc.player.logic.raycast dummy
scoreboard objectives add lcmc.player.logic.prevInteract dummy
scoreboard objectives add lcmc.player.logic.currInteract dummy
scoreboard objectives add lcmc.player.logic.prevWhoopee dummy
scoreboard objectives add lcmc.player.logic.currWhoopee dummy
scoreboard objectives add lcmc.player.logic.titleTick dummy
scoreboard objectives add lcmc.player.logic.disposable dummy
scoreboard objectives add lcmc.player.logic.fearDecrease dummy
scoreboard objectives add lcmc.player.logic.insanityIncrease dummy
scoreboard objectives add lcmc.player.logic.hallucinationTimer dummy
scoreboard objectives add lcmc.enemy.logic.attackCooldown dummy
scoreboard objectives add lcmc.item.logic.kickCooldown dummy
scoreboard objectives add lcmc.trap.logic.prevLandMine dummy
scoreboard objectives add lcmc.trap.logic.currLandMine dummy
#scoreboard objectives add lcmc.item.logic.flashLight dummy

# Enemies
scoreboard objectives add lcmc.enemy.eyelessDog dummy
scoreboard players set var lcmc.enemy.eyelessDog 0
scoreboard objectives add lcmc.eyelessDog.listenerCooldown dummy
scoreboard objectives add lcmc.eyelessDog.hasHeard dummy
scoreboard objectives add lcmc.eyelessDog.soundCoords.X dummy
scoreboard objectives add lcmc.eyelessDog.soundCoords.Y dummy
scoreboard objectives add lcmc.eyelessDog.soundCoords.Z dummy

scoreboard objectives add lcmc.enemy.coilhead dummy
scoreboard players set attackDamage lcmc.enemy.coilhead 90
scoreboard players set attackCooldown lcmc.enemy.coilhead 4
scoreboard players set doorSpeed lcmc.enemy.coilhead 12
scoreboard players set powerLevel lcmc.enemy.coilhead 1
scoreboard players set maxAmount lcmc.enemy.coilhead 5
scoreboard players add currAmount lcmc.enemy.coilhead 0
scoreboard players set dangerLevel lcmc.enemy.coilhead 80
scoreboard players set residesIn lcmc.enemy.coilhead 1
scoreboard objectives add lcmc.coilhead.instaneId dummy
scoreboard objectives add lcmc.coilhead.inFOV dummy
scoreboard objectives add lcmc.coilhead.isVisible dummy
scoreboard objectives add lcmc.coilhead.wasVisible dummy

scoreboard objectives add lcmc.enemy.test dummy
scoreboard objectives add lcmc.enemy.test.id dummy
scoreboard players set speed lcmc.enemy.test 25
scoreboard players set searchRadius lcmc.enemy.test 100
scoreboard players set attackDamage lcmc.enemy.test 90
scoreboard players set attackDamage lcmc.enemy.test 90
scoreboard players set attackCooldown lcmc.enemy.test 4
scoreboard players set doorSpeed lcmc.enemy.test 12
scoreboard players set powerLevel lcmc.enemy.test 1
scoreboard players set maxAmount lcmc.enemy.test 5
scoreboard players add currAmount lcmc.enemy.test 0
scoreboard players set dangerLevel lcmc.enemy.test 80
scoreboard players set residesIn lcmc.enemy.test 1

scoreboard objectives add lcmc.enemy.listenerLogic dummy
scoreboard objectives add lcmc.enemy.ai.lookingForPath dummy
scoreboard objectives add lcmc.enemy.ai.canSeeNext dummy
scoreboard objectives add lcmc.enemy.ai.pathIndex dummy

# Ship
scoreboard objectives add lcmc.ship.map.targetPosition dummy
scoreboard objectives add lcmc.ship.map.nextMonitor dummy
scoreboard objectives add lcmc.ship.map dummy
scoreboard objectives add lcmc.ship.teleporter dummy
scoreboard objectives add lcmc.ship.reverseTeleporter dummy
scoreboard objectives add lcmc.ship.signalTransmitter dummy
scoreboard objectives add lcmc.ship.loudHorn dummy
scoreboard objectives add lcmc.ship.transmitter dummy

# Triggers
scoreboard objectives add lcmc.player.action.dance trigger
scoreboard objectives add lcmc.player.action.point trigger

# Moons
scoreboard objectives add lcmc.moon.experimentation dummy
scoreboard players set variable lcmc.moon.experimentation 0

# Items
scoreboard objectives add lcmc.item.metalSheet dummy

# Player Count
scoreboard objectives add lcmc.player.leaveGame custom:leave_game
scoreboard players reset playerCount lcmc.game.gameState
scoreboard players set onMoon lcmc.game.gameState 0



# Boss Bars
bossbar add lcmc:game.logic.time {"text": "Time of Day"}
bossbar add lcmc:player.gui.1 {"text": "\u0001","font": "lc:inventory"}
bossbar add lcmc:player.gui.2 {"text": "Battery"}
bossbar add lcmc:player.gui.3 {"text": "Battery"}
bossbar add lcmc:player.gui.4 {"text": "Battery"}
bossbar add lcmc:player.transmitter {"text": ""}

# FOV Marker
kill @e[tag=lcmc.logic.FOVMarker]
execute in minecraft:overworld run summon marker ~ ~ ~ {Tags:['lcmc.logic.FOVMarker','lcmc.logic.GameLogic']}

kill @e[tag=lcmc.logic.Collected]
summon item_display 0 0 0 {Tags:['lcmc.logic.Collected'],item:{id:"minecraft:bone",count:1,components:{"minecraft:custom_data":{Collected:1b}}}}

kill @e[tag=lcmc.logic.TimeStrings]

summon item_display 0 0 0 {Tags:['lcmc.logic.TimeStrings','lcmc.logic.signature.AM'],item:{id:"minecraft:bone",count:1,components:{"minecraft:custom_data":{Signature:'{"text":"\\u0101"}'}}}}
summon item_display 0 0 0 {Tags:['lcmc.logic.TimeStrings','lcmc.logic.signature.PM'],item:{id:"minecraft:bone",count:1,components:{"minecraft:custom_data":{Signature:'{"text":"\\u0102"}'}}}}

summon item_display 0 0 0 {Tags:['lcmc.logic.TimeStrings','lcmc.logic.hours.1'],item:{id:"minecraft:bone",count:1,components:{"minecraft:custom_data":{Time:'{"text":"\\u0301"}'}}}}
summon item_display 0 0 0 {Tags:['lcmc.logic.TimeStrings','lcmc.logic.hours.2'],item:{id:"minecraft:bone",count:1,components:{"minecraft:custom_data":{Time:'{"text":"\\u0302"}'}}}}
summon item_display 0 0 0 {Tags:['lcmc.logic.TimeStrings','lcmc.logic.hours.3'],item:{id:"minecraft:bone",count:1,components:{"minecraft:custom_data":{Time:'{"text":"\\u0303"}'}}}}
summon item_display 0 0 0 {Tags:['lcmc.logic.TimeStrings','lcmc.logic.hours.4'],item:{id:"minecraft:bone",count:1,components:{"minecraft:custom_data":{Time:'{"text":"\\u0304"}'}}}}
summon item_display 0 0 0 {Tags:['lcmc.logic.TimeStrings','lcmc.logic.hours.5'],item:{id:"minecraft:bone",count:1,components:{"minecraft:custom_data":{Time:'{"text":"\\u0305"}'}}}}
summon item_display 0 0 0 {Tags:['lcmc.logic.TimeStrings','lcmc.logic.hours.6'],item:{id:"minecraft:bone",count:1,components:{"minecraft:custom_data":{Time:'{"text":"\\u0306"}'}}}}
summon item_display 0 0 0 {Tags:['lcmc.logic.TimeStrings','lcmc.logic.hours.7'],item:{id:"minecraft:bone",count:1,components:{"minecraft:custom_data":{Time:'{"text":"\\u0307"}'}}}}
summon item_display 0 0 0 {Tags:['lcmc.logic.TimeStrings','lcmc.logic.hours.8'],item:{id:"minecraft:bone",count:1,components:{"minecraft:custom_data":{Time:'{"text":"\\u0308"}'}}}}
summon item_display 0 0 0 {Tags:['lcmc.logic.TimeStrings','lcmc.logic.hours.9'],item:{id:"minecraft:bone",count:1,components:{"minecraft:custom_data":{Time:'{"text":"\\u0309"}'}}}}
summon item_display 0 0 0 {Tags:['lcmc.logic.TimeStrings','lcmc.logic.hours.10'],item:{id:"minecraft:bone",count:1,components:{"minecraft:custom_data":{Time:'{"text":"\\u0310"}'}}}}
summon item_display 0 0 0 {Tags:['lcmc.logic.TimeStrings','lcmc.logic.hours.11'],item:{id:"minecraft:bone",count:1,components:{"minecraft:custom_data":{Time:'{"text":"\\u0311"}'}}}}
summon item_display 0 0 0 {Tags:['lcmc.logic.TimeStrings','lcmc.logic.hours.12'],item:{id:"minecraft:bone",count:1,components:{"minecraft:custom_data":{Time:'{"text":"\\u0312"}'}}}}

summon item_display 0 0 0 {Tags:['lcmc.logic.TimeStrings','lcmc.logic.minutes.1.0'],item:{id:"minecraft:bone",count:1,components:{"minecraft:custom_data":{Time:'{"text":"\\u1100"}'}}}}
summon item_display 0 0 0 {Tags:['lcmc.logic.TimeStrings','lcmc.logic.minutes.1.1'],item:{id:"minecraft:bone",count:1,components:{"minecraft:custom_data":{Time:'{"text":"\\u1101"}'}}}}
summon item_display 0 0 0 {Tags:['lcmc.logic.TimeStrings','lcmc.logic.minutes.1.2'],item:{id:"minecraft:bone",count:1,components:{"minecraft:custom_data":{Time:'{"text":"\\u1102"}'}}}}
summon item_display 0 0 0 {Tags:['lcmc.logic.TimeStrings','lcmc.logic.minutes.1.3'],item:{id:"minecraft:bone",count:1,components:{"minecraft:custom_data":{Time:'{"text":"\\u1103"}'}}}}
summon item_display 0 0 0 {Tags:['lcmc.logic.TimeStrings','lcmc.logic.minutes.1.4'],item:{id:"minecraft:bone",count:1,components:{"minecraft:custom_data":{Time:'{"text":"\\u1104"}'}}}}
summon item_display 0 0 0 {Tags:['lcmc.logic.TimeStrings','lcmc.logic.minutes.1.5'],item:{id:"minecraft:bone",count:1,components:{"minecraft:custom_data":{Time:'{"text":"\\u1105"}'}}}}
summon item_display 0 0 0 {Tags:['lcmc.logic.TimeStrings','lcmc.logic.minutes.1.6'],item:{id:"minecraft:bone",count:1,components:{"minecraft:custom_data":{Time:'{"text":"\\u1106"}'}}}}
summon item_display 0 0 0 {Tags:['lcmc.logic.TimeStrings','lcmc.logic.minutes.1.7'],item:{id:"minecraft:bone",count:1,components:{"minecraft:custom_data":{Time:'{"text":"\\u1107"}'}}}}
summon item_display 0 0 0 {Tags:['lcmc.logic.TimeStrings','lcmc.logic.minutes.1.8'],item:{id:"minecraft:bone",count:1,components:{"minecraft:custom_data":{Time:'{"text":"\\u1108"}'}}}}
summon item_display 0 0 0 {Tags:['lcmc.logic.TimeStrings','lcmc.logic.minutes.1.9'],item:{id:"minecraft:bone",count:1,components:{"minecraft:custom_data":{Time:'{"text":"\\u1109"}'}}}}

summon item_display 0 0 0 {Tags:['lcmc.logic.TimeStrings','lcmc.logic.minutes.2.0'],item:{id:"minecraft:bone",count:1,components:{"minecraft:custom_data":{Time:'{"text":"\\u1200"}'}}}}
summon item_display 0 0 0 {Tags:['lcmc.logic.TimeStrings','lcmc.logic.minutes.2.1'],item:{id:"minecraft:bone",count:1,components:{"minecraft:custom_data":{Time:'{"text":"\\u1201"}'}}}}
summon item_display 0 0 0 {Tags:['lcmc.logic.TimeStrings','lcmc.logic.minutes.2.2'],item:{id:"minecraft:bone",count:1,components:{"minecraft:custom_data":{Time:'{"text":"\\u1202"}'}}}}
summon item_display 0 0 0 {Tags:['lcmc.logic.TimeStrings','lcmc.logic.minutes.2.3'],item:{id:"minecraft:bone",count:1,components:{"minecraft:custom_data":{Time:'{"text":"\\u1203"}'}}}}
summon item_display 0 0 0 {Tags:['lcmc.logic.TimeStrings','lcmc.logic.minutes.2.4'],item:{id:"minecraft:bone",count:1,components:{"minecraft:custom_data":{Time:'{"text":"\\u1204"}'}}}}
summon item_display 0 0 0 {Tags:['lcmc.logic.TimeStrings','lcmc.logic.minutes.2.5'],item:{id:"minecraft:bone",count:1,components:{"minecraft:custom_data":{Time:'{"text":"\\u1205"}'}}}}
summon item_display 0 0 0 {Tags:['lcmc.logic.TimeStrings','lcmc.logic.minutes.2.6'],item:{id:"minecraft:bone",count:1,components:{"minecraft:custom_data":{Time:'{"text":"\\u1206"}'}}}}
summon item_display 0 0 0 {Tags:['lcmc.logic.TimeStrings','lcmc.logic.minutes.2.7'],item:{id:"minecraft:bone",count:1,components:{"minecraft:custom_data":{Time:'{"text":"\\u1207"}'}}}}
summon item_display 0 0 0 {Tags:['lcmc.logic.TimeStrings','lcmc.logic.minutes.2.8'],item:{id:"minecraft:bone",count:1,components:{"minecraft:custom_data":{Time:'{"text":"\\u1208"}'}}}}
summon item_display 0 0 0 {Tags:['lcmc.logic.TimeStrings','lcmc.logic.minutes.2.9'],item:{id:"minecraft:bone",count:1,components:{"minecraft:custom_data":{Time:'{"text":"\\u1209"}'}}}}

summon item_display 0 0 0 {Tags:['lcmc.logic.TimeStrings','lcmc.logic.minutes.3.0'],item:{id:"minecraft:bone",count:1,components:{"minecraft:custom_data":{Time:'{"text":"\\u1300"}'}}}}
summon item_display 0 0 0 {Tags:['lcmc.logic.TimeStrings','lcmc.logic.minutes.3.1'],item:{id:"minecraft:bone",count:1,components:{"minecraft:custom_data":{Time:'{"text":"\\u1301"}'}}}}
summon item_display 0 0 0 {Tags:['lcmc.logic.TimeStrings','lcmc.logic.minutes.3.2'],item:{id:"minecraft:bone",count:1,components:{"minecraft:custom_data":{Time:'{"text":"\\u1302"}'}}}}
summon item_display 0 0 0 {Tags:['lcmc.logic.TimeStrings','lcmc.logic.minutes.3.3'],item:{id:"minecraft:bone",count:1,components:{"minecraft:custom_data":{Time:'{"text":"\\u1303"}'}}}}
summon item_display 0 0 0 {Tags:['lcmc.logic.TimeStrings','lcmc.logic.minutes.3.4'],item:{id:"minecraft:bone",count:1,components:{"minecraft:custom_data":{Time:'{"text":"\\u1304"}'}}}}
summon item_display 0 0 0 {Tags:['lcmc.logic.TimeStrings','lcmc.logic.minutes.3.5'],item:{id:"minecraft:bone",count:1,components:{"minecraft:custom_data":{Time:'{"text":"\\u1305"}'}}}}
summon item_display 0 0 0 {Tags:['lcmc.logic.TimeStrings','lcmc.logic.minutes.3.6'],item:{id:"minecraft:bone",count:1,components:{"minecraft:custom_data":{Time:'{"text":"\\u1306"}'}}}}
summon item_display 0 0 0 {Tags:['lcmc.logic.TimeStrings','lcmc.logic.minutes.3.7'],item:{id:"minecraft:bone",count:1,components:{"minecraft:custom_data":{Time:'{"text":"\\u1307"}'}}}}
summon item_display 0 0 0 {Tags:['lcmc.logic.TimeStrings','lcmc.logic.minutes.3.8'],item:{id:"minecraft:bone",count:1,components:{"minecraft:custom_data":{Time:'{"text":"\\u1308"}'}}}}
summon item_display 0 0 0 {Tags:['lcmc.logic.TimeStrings','lcmc.logic.minutes.3.9'],item:{id:"minecraft:bone",count:1,components:{"minecraft:custom_data":{Time:'{"text":"\\u1309"}'}}}}

# Map Detectors
kill @e[tag=lcmc.ship.map.Marker]
summon marker 0 0 0 {Tags:['lcmc.ship.map.Marker','lcmc.ship.map.Marker.X0Y0Z0']}
summon marker 0 0 0 {Tags:['lcmc.ship.map.Marker','lcmc.ship.map.Marker.X1Y0Z0']}
summon marker 0 0 0 {Tags:['lcmc.ship.map.Marker','lcmc.ship.map.Marker.X2Y0Z0']}
summon marker 0 0 0 {Tags:['lcmc.ship.map.Marker','lcmc.ship.map.Marker.X3Y0Z0']}
summon marker 0 0 0 {Tags:['lcmc.ship.map.Marker','lcmc.ship.map.Marker.X4Y0Z0']}
summon marker 0 0 0 {Tags:['lcmc.ship.map.Marker','lcmc.ship.map.Marker.X0Y0Z1']}
summon marker 0 0 0 {Tags:['lcmc.ship.map.Marker','lcmc.ship.map.Marker.X1Y0Z1']}
summon marker 0 0 0 {Tags:['lcmc.ship.map.Marker','lcmc.ship.map.Marker.X2Y0Z1']}
summon marker 0 0 0 {Tags:['lcmc.ship.map.Marker','lcmc.ship.map.Marker.X3Y0Z1']}
summon marker 0 0 0 {Tags:['lcmc.ship.map.Marker','lcmc.ship.map.Marker.X4Y0Z1']}
summon marker 0 0 0 {Tags:['lcmc.ship.map.Marker','lcmc.ship.map.Marker.X0Y0Z2']}
summon marker 0 0 0 {Tags:['lcmc.ship.map.Marker','lcmc.ship.map.Marker.X1Y0Z2']}
summon marker 0 0 0 {Tags:['lcmc.ship.map.Marker','lcmc.ship.map.Marker.X2Y0Z2']}
summon marker 0 0 0 {Tags:['lcmc.ship.map.Marker','lcmc.ship.map.Marker.X3Y0Z2']}
summon marker 0 0 0 {Tags:['lcmc.ship.map.Marker','lcmc.ship.map.Marker.X4Y0Z2']}
summon marker 0 0 0 {Tags:['lcmc.ship.map.Marker','lcmc.ship.map.Marker.X0Y0Z3']}
summon marker 0 0 0 {Tags:['lcmc.ship.map.Marker','lcmc.ship.map.Marker.X1Y0Z3']}
summon marker 0 0 0 {Tags:['lcmc.ship.map.Marker','lcmc.ship.map.Marker.X2Y0Z3']}
summon marker 0 0 0 {Tags:['lcmc.ship.map.Marker','lcmc.ship.map.Marker.X3Y0Z3']}
summon marker 0 0 0 {Tags:['lcmc.ship.map.Marker','lcmc.ship.map.Marker.X4Y0Z3']}
summon marker 0 0 0 {Tags:['lcmc.ship.map.Marker','lcmc.ship.map.Marker.X0Y0Z4']}
summon marker 0 0 0 {Tags:['lcmc.ship.map.Marker','lcmc.ship.map.Marker.X1Y0Z4']}
summon marker 0 0 0 {Tags:['lcmc.ship.map.Marker','lcmc.ship.map.Marker.X2Y0Z4']}
summon marker 0 0 0 {Tags:['lcmc.ship.map.Marker','lcmc.ship.map.Marker.X3Y0Z4']}
summon marker 0 0 0 {Tags:['lcmc.ship.map.Marker','lcmc.ship.map.Marker.X4Y0Z4']}
summon marker 0 0 0 {Tags:['lcmc.ship.map.Marker','lcmc.ship.map.Marker.X0Y1Z0']}
summon marker 0 0 0 {Tags:['lcmc.ship.map.Marker','lcmc.ship.map.Marker.X1Y1Z0']}
summon marker 0 0 0 {Tags:['lcmc.ship.map.Marker','lcmc.ship.map.Marker.X2Y1Z0']}
summon marker 0 0 0 {Tags:['lcmc.ship.map.Marker','lcmc.ship.map.Marker.X3Y1Z0']}
summon marker 0 0 0 {Tags:['lcmc.ship.map.Marker','lcmc.ship.map.Marker.X4Y1Z0']}
summon marker 0 0 0 {Tags:['lcmc.ship.map.Marker','lcmc.ship.map.Marker.X0Y1Z1']}
summon marker 0 0 0 {Tags:['lcmc.ship.map.Marker','lcmc.ship.map.Marker.X1Y1Z1']}
summon marker 0 0 0 {Tags:['lcmc.ship.map.Marker','lcmc.ship.map.Marker.X2Y1Z1']}
summon marker 0 0 0 {Tags:['lcmc.ship.map.Marker','lcmc.ship.map.Marker.X3Y1Z1']}
summon marker 0 0 0 {Tags:['lcmc.ship.map.Marker','lcmc.ship.map.Marker.X4Y1Z1']}
summon marker 0 0 0 {Tags:['lcmc.ship.map.Marker','lcmc.ship.map.Marker.X0Y1Z2']}
summon marker 0 0 0 {Tags:['lcmc.ship.map.Marker','lcmc.ship.map.Marker.X1Y1Z2']}
summon marker 0 0 0 {Tags:['lcmc.ship.map.Marker','lcmc.ship.map.Marker.X2Y1Z2']}
summon marker 0 0 0 {Tags:['lcmc.ship.map.Marker','lcmc.ship.map.Marker.X3Y1Z2']}
summon marker 0 0 0 {Tags:['lcmc.ship.map.Marker','lcmc.ship.map.Marker.X4Y1Z2']}
summon marker 0 0 0 {Tags:['lcmc.ship.map.Marker','lcmc.ship.map.Marker.X0Y1Z3']}
summon marker 0 0 0 {Tags:['lcmc.ship.map.Marker','lcmc.ship.map.Marker.X1Y1Z3']}
summon marker 0 0 0 {Tags:['lcmc.ship.map.Marker','lcmc.ship.map.Marker.X2Y1Z3']}
summon marker 0 0 0 {Tags:['lcmc.ship.map.Marker','lcmc.ship.map.Marker.X3Y1Z3']}
summon marker 0 0 0 {Tags:['lcmc.ship.map.Marker','lcmc.ship.map.Marker.X4Y1Z3']}
summon marker 0 0 0 {Tags:['lcmc.ship.map.Marker','lcmc.ship.map.Marker.X0Y1Z4']}
summon marker 0 0 0 {Tags:['lcmc.ship.map.Marker','lcmc.ship.map.Marker.X1Y1Z4']}
summon marker 0 0 0 {Tags:['lcmc.ship.map.Marker','lcmc.ship.map.Marker.X2Y1Z4']}
summon marker 0 0 0 {Tags:['lcmc.ship.map.Marker','lcmc.ship.map.Marker.X3Y1Z4']}
summon marker 0 0 0 {Tags:['lcmc.ship.map.Marker','lcmc.ship.map.Marker.X4Y1Z4']}

# Map Display
kill @e[tag=lcmc.ship.map.Display]
summon item_display 0.5 -57.49 20.5 {Tags:["lcmc.ship.map.Display","lcmc.ship.map.Display.Target"],item:{id:"map",components:{custom_model_data:101}},transformation:{translation:[0,0,0],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5]}}
summon item_display 0.5 -57.49 20.5 {Tags:["lcmc.ship.map.Display","lcmc.ship.map.Display.TargetPointer"],item:{id:"map",components:{custom_model_data:102}},transformation:{translation:[0,0,0],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[0.5,0.5,0.5]}}
summon block_display 1.0 -58 21.0 {width:0.1f,height:0.1f,Tags:["lcmc.ship.map.Display","lcmc.ship.map.Display.World","lcmc.ship.map.Display.X0Y0Z0"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
summon block_display 0.75 -58 21.0 {width:0.1f,height:0.1f,Tags:["lcmc.ship.map.Display","lcmc.ship.map.Display.World","lcmc.ship.map.Display.X1Y0Z0"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
summon block_display 0.5 -58 21.0 {width:0.1f,height:0.1f,Tags:["lcmc.ship.map.Display","lcmc.ship.map.Display.World","lcmc.ship.map.Display.X2Y0Z0"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
summon block_display 0.25 -58 21.0 {width:0.1f,height:0.1f,Tags:["lcmc.ship.map.Display","lcmc.ship.map.Display.World","lcmc.ship.map.Display.X3Y0Z0"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
summon block_display 0.0 -58 21.0 {width:0.1f,height:0.1f,Tags:["lcmc.ship.map.Display","lcmc.ship.map.Display.World","lcmc.ship.map.Display.X4Y0Z0"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
summon block_display 1.0 -58 20.75 {width:0.1f,height:0.1f,Tags:["lcmc.ship.map.Display","lcmc.ship.map.Display.World","lcmc.ship.map.Display.X0Y0Z1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
summon block_display 0.75 -58 20.75 {width:0.1f,height:0.1f,Tags:["lcmc.ship.map.Display","lcmc.ship.map.Display.World","lcmc.ship.map.Display.X1Y0Z1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
summon block_display 0.5 -58 20.75 {width:0.1f,height:0.1f,Tags:["lcmc.ship.map.Display","lcmc.ship.map.Display.World","lcmc.ship.map.Display.X2Y0Z1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
summon block_display 0.25 -58 20.75 {width:0.1f,height:0.1f,Tags:["lcmc.ship.map.Display","lcmc.ship.map.Display.World","lcmc.ship.map.Display.X3Y0Z1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
summon block_display 0.0 -58 20.75 {width:0.1f,height:0.1f,Tags:["lcmc.ship.map.Display","lcmc.ship.map.Display.World","lcmc.ship.map.Display.X4Y0Z1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
summon block_display 1.0 -58 20.5 {width:0.1f,height:0.1f,Tags:["lcmc.ship.map.Display","lcmc.ship.map.Display.World","lcmc.ship.map.Display.X0Y0Z2"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
summon block_display 0.75 -58 20.5 {width:0.1f,height:0.1f,Tags:["lcmc.ship.map.Display","lcmc.ship.map.Display.World","lcmc.ship.map.Display.X1Y0Z2"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
summon block_display 0.5 -58 20.5 {width:0.1f,height:0.1f,Tags:["lcmc.ship.map.Display","lcmc.ship.map.Display.World","lcmc.ship.map.Display.X2Y0Z2"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
summon block_display 0.25 -58 20.5 {width:0.1f,height:0.1f,Tags:["lcmc.ship.map.Display","lcmc.ship.map.Display.World","lcmc.ship.map.Display.X3Y0Z2"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
summon block_display 0.0 -58 20.5 {width:0.1f,height:0.1f,Tags:["lcmc.ship.map.Display","lcmc.ship.map.Display.World","lcmc.ship.map.Display.X4Y0Z2"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
summon block_display 1.0 -58 20.25 {width:0.1f,height:0.1f,Tags:["lcmc.ship.map.Display","lcmc.ship.map.Display.World","lcmc.ship.map.Display.X0Y0Z3"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
summon block_display 0.75 -58 20.25 {width:0.1f,height:0.1f,Tags:["lcmc.ship.map.Display","lcmc.ship.map.Display.World","lcmc.ship.map.Display.X1Y0Z3"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
summon block_display 0.5 -58 20.25 {width:0.1f,height:0.1f,Tags:["lcmc.ship.map.Display","lcmc.ship.map.Display.World","lcmc.ship.map.Display.X2Y0Z3"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
summon block_display 0.25 -58 20.25 {width:0.1f,height:0.1f,Tags:["lcmc.ship.map.Display","lcmc.ship.map.Display.World","lcmc.ship.map.Display.X3Y0Z3"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
summon block_display 0.0 -58 20.25 {width:0.1f,height:0.1f,Tags:["lcmc.ship.map.Display","lcmc.ship.map.Display.World","lcmc.ship.map.Display.X4Y0Z3"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
summon block_display 1.0 -58 20.0 {width:0.1f,height:0.1f,Tags:["lcmc.ship.map.Display","lcmc.ship.map.Display.World","lcmc.ship.map.Display.X0Y0Z4"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
summon block_display 0.75 -58 20.0 {width:0.1f,height:0.1f,Tags:["lcmc.ship.map.Display","lcmc.ship.map.Display.World","lcmc.ship.map.Display.X1Y0Z4"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
summon block_display 0.5 -58 20.0 {width:0.1f,height:0.1f,Tags:["lcmc.ship.map.Display","lcmc.ship.map.Display.World","lcmc.ship.map.Display.X2Y0Z4"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
summon block_display 0.25 -58 20.0 {width:0.1f,height:0.1f,Tags:["lcmc.ship.map.Display","lcmc.ship.map.Display.World","lcmc.ship.map.Display.X3Y0Z4"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}
summon block_display 0.0 -58 20.0 {width:0.1f,height:0.1f,Tags:["lcmc.ship.map.Display","lcmc.ship.map.Display.World","lcmc.ship.map.Display.X4Y0Z4"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}}

# Inventory Items
kill @e[tag=InventoryEntity]
summon item_display 0 0 0 {Tags:['lcmc.player.inventory.InventoryEntity','lcmc.player.Player.1','lcmc.player.inventory.Slot1']}
summon item_display 0 0 0 {Tags:['lcmc.player.inventory.InventoryEntity','lcmc.player.Player.1','lcmc.player.inventory.Slot2']}
summon item_display 0 0 0 {Tags:['lcmc.player.inventory.InventoryEntity','lcmc.player.Player.1','lcmc.player.inventory.Slot3']}
summon item_display 0 0 0 {Tags:['lcmc.player.inventory.InventoryEntity','lcmc.player.Player.1','lcmc.player.inventory.Slot4']}
summon item_display 0 0 0 {Tags:['lcmc.player.inventory.InventoryEntity','lcmc.player.Player.1','lcmc.player.inventory.SlotM']}
#summon item_display 0 0 0 {Tags:['InventoryEntity','Player2','Slot1']}
#summon item_display 0 0 0 {Tags:['InventoryEntity','Player2','Slot2']}
#summon item_display 0 0 0 {Tags:['InventoryEntity','Player2','Slot3']}
#summon item_display 0 0 0 {Tags:['InventoryEntity','Player2','Slot4']}
#summon item_display 0 0 0 {Tags:['InventoryEntity','Player3','Slot1']}
#summon item_display 0 0 0 {Tags:['InventoryEntity','Player3','Slot2']}
#summon item_display 0 0 0 {Tags:['InventoryEntity','Player3','Slot3']}
#summon item_display 0 0 0 {Tags:['InventoryEntity','Player3','Slot4']}
#summon item_display 0 0 0 {Tags:['InventoryEntity','Player4','Slot1']}
#summon item_display 0 0 0 {Tags:['InventoryEntity','Player4','Slot2']}
#summon item_display 0 0 0 {Tags:['InventoryEntity','Player4','Slot3']}
#summon item_display 0 0 0 {Tags:['InventoryEntity','Player4','Slot4']}



tellraw @a[tag=Debug] "<Server> Successfully added scoreboards in `load.mcfunction`"

tellraw @a[tag=Debug] "<Server> Successfully loaded `load.mcfunction`"