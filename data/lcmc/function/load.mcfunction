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
scoreboard objectives add lcmc.player.onGround dummy
scoreboard objectives add lcmc.player.facing.X dummy
scoreboard objectives add lcmc.player.facing.Y dummy
scoreboard objectives add lcmc.player.moddedFacing.X dummy
scoreboard objectives add lcmc.player.moddedFacing.Y dummy
scoreboard objectives add lcmc.player.coilTimer dummy

# Math/Logic
scoreboard objectives add lcmc.game.gameState dummy
scoreboard players add time lcmc.game.gameState 0
scoreboard players add onMoon lcmc.game.gameState 0
scoreboard players add indoorSpawnCooldown lcmc.game.gameState 0
scoreboard players add outdoorSpawnCooldown lcmc.game.gameState 0
scoreboard players add daytimeSpawnCooldown lcmc.game.gameState 0
scoreboard players add indoorEntityValue lcmc.game.gameState 0
scoreboard objectives add lcmc.logic.currTick dummy
scoreboard objectives add lcmc.logic.prevTick dummy
scoreboard objectives add lcmc.math.numbers dummy
scoreboard players set 0 lcmc.math.numbers 0
scoreboard players set 1 lcmc.math.numbers 1
scoreboard players set 9 lcmc.math.numbers 9
scoreboard players set 180 lcmc.math.numbers 180
scoreboard players set 90 lcmc.math.numbers 90
scoreboard players set 1800 lcmc.math.numbers 1800
scoreboard players set 900 lcmc.math.numbers 900
scoreboard objectives add lcmc.player.math.previousSlot dummy
scoreboard objectives add lcmc.player.math.currentSlot dummy
scoreboard objectives add lcmc.player.logic.raycast dummy
scoreboard objectives add lcmc.enemy.logic.attackCooldown dummy

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

# Moons
scoreboard objectives add lcmc.moon.experimentation dummy
scoreboard players set variable lcmc.moon.experimentation 0

# Items
scoreboard objectives add lcmc.item.metalSheet dummy



# FOV Marker
kill @e[tag=FOVMarker]
execute in minecraft:overworld run summon marker ~ ~ ~ {Tags:['FOVMarker','GameLogic']}



tellraw @a[tag=Debug] "<Server> Successfully added scoreboards in `load.mcfunction`"

tellraw @a[tag=Debug] "<Server> Successfully loaded `load.mcfunction`"