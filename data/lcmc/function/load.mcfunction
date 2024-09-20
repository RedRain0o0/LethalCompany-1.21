tellraw @a[tag=Debug] "<Server> Started loading `load.mcfunction`"

# Scoreboards

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

# Math/Logic
scoreboard objectives add lcmc.logic.currTick dummy
scoreboard objectives add lcmc.logic.prevTick dummy
scoreboard objectives add lcmc.math.numbers dummy
scoreboard players set 0 lcmc.math.numbers 0
scoreboard players set 9 lcmc.math.numbers 9
scoreboard objectives add lcmc.player.math.previousSlot dummy
scoreboard objectives add lcmc.player.math.currentSlot dummy
scoreboard objectives add lcmc.player.logic.raycast dummy

# Enemies
scoreboard objectives add lcmc.eyelessDog.listenerCooldown dummy
scoreboard objectives add lcmc.eyelessDog.hasHeard dummy
scoreboard objectives add lcmc.eyelessDog.soundCoords.X dummy
scoreboard objectives add lcmc.eyelessDog.soundCoords.Y dummy
scoreboard objectives add lcmc.eyelessDog.soundCoords.Z dummy

scoreboard objectives add lcmc.coilhead.isWatched dummy

# FOV Marker
kill @e[tag=FOVMarker]
execute in minecraft:overworld run summon marker ~ ~ ~ {Tags:['FOVMarker','GameLogic']}

tellraw @a[tag=Debug] "<Server> Successfully added scoreboards in `load.mcfunction`"

tellraw @a[tag=Debug] "<Server> Successfully loaded `load.mcfunction`"