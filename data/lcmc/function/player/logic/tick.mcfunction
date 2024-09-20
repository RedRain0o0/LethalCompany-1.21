# Fall Time
execute store result score @s lcmc.player.onGround run data get entity @s OnGround
execute store result score @s lcmc.player.fallVelocity run data get entity @s Motion[1] 1000
execute unless score @s lcmc.player.onGround matches 1 if score @s lcmc.player.fallVelocity matches ..-1 run scoreboard players add @s lcmc.player.fallTime 1
execute if score @s lcmc.player.onGround matches 1 if score @s lcmc.player.fallTime matches 20.. run scoreboard players remove @s lcmc.player.health 10
execute if score @s lcmc.player.onGround matches 1 run scoreboard players set @s lcmc.player.fallTime 0
execute if score @s lcmc.player.fallVelocity matches 0.. run scoreboard players set @s lcmc.player.fallTime 0

# Inventory
execute store result score @s lcmc.player.selectedSlot run data get entity @s SelectedItemSlot
# execute if score @s lcmc.player.previousSlot matches 8 if score @s lcmc.player.selectedSlot matches 0 run say Rollover
# execute if score @s lcmc.player.previousSlot matches 0 if score @s lcmc.player.selectedSlot matches 8 run say Rollover

# execute store result score @s lcmc.player.math.currentSlot run scoreboard players get @s lcmc.player.selectedSlot
# execute store result score @s lcmc.player.math.previousSlot run scoreboard players get @s lcmc.player.previousSlot
# scoreboard players operation @s lcmc.player.math.previousSlot -= @s lcmc.player.math.currentSlot
# scoreboard players operation @s lcmc.player.previousSlot += 9 lcmc.math.numbers
# scoreboard players operation @s lcmc.player.previousSlot %= 9 lcmc.math.numbers
# tellraw @s {"score":{"name":"@s","objective":"lcmc.player.math.previousSlot"}}


# execute if score @s lcmc.player.scrollCooldown matches 0 if score @s lcmc.player.selectedSlot <= @s lcmc.player.previousSlot run scoreboard players add @s lcmc.player.selectedInventorySlot 1
# execute if score @s lcmc.player.scrollCooldown matches 0 if score @s lcmc.player.selectedSlot >= @s lcmc.player.previousSlot run scoreboard players remove @s lcmc.player.selectedInventorySlot 1
# execute if score @s lcmc.player.selectedInventorySlot matches 5.. run scoreboard players set @s lcmc.player.selectedInventorySlot 1
# execute if score @s lcmc.player.selectedInventorySlot matches ..0 run scoreboard players set @s lcmc.player.selectedInventorySlot 4

# title @s actionbar {"score":{"name":"@s","objective":"lcmc.player.selectedSlot"},"extra":[{"text":" "},{"score":{"name":"@s","objective":"lcmc.player.previousSlot"}}]}
# execute unless score @s lcmc.player.scrollCooldown matches 1.. unless score @s lcmc.player.previousSlot = @s lcmc.player.selectedSlot run scoreboard players set @s lcmc.player.scrollCooldown 5
# execute if score @s lcmc.player.scrollCooldown matches 1.. run scoreboard players remove @s lcmc.player.scrollCooldown 1
# scoreboard players operation @s lcmc.player.previousSlot >< @s lcmc.player.selectedSlot

title @s actionbar {"score":{"name":"@s","objective":"lcmc.player.facing.X"},"extra":[{"text":" "},{"score":{"name":"@s","objective":"lcmc.player.facing.Y"}}]}

# Healing
execute if score @s lcmc.player.healCooldown matches 1.. if score @s lcmc.player.health matches 1..19 run scoreboard players remove @s lcmc.player.healCooldown 1
execute if score @s lcmc.player.health matches 1..19 unless score @s lcmc.player.healCooldown matches 1.. run scoreboard players add @s lcmc.player.health 1
execute if score @s lcmc.player.health matches 1..19 if score @s lcmc.player.healCooldown matches 0 run scoreboard players set @s lcmc.player.healCooldown 20
execute if score @s lcmc.player.health matches 20.. if score @s lcmc.player.healCooldown matches 0 run scoreboard players set @s lcmc.player.healCooldown 20

tellraw @a[tag=Debug] "<Server> Succesfully completed `player/logic/tick.mcfunction`"