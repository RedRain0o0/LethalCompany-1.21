execute unless score @s lcmc.player.scrollCooldown matches 1.. if score @s lcmc.player.selectedSlot <= @s lcmc.player.previousSlot run scoreboard players add @s lcmc.player.selectedInventorySlot 1
execute unless score @s lcmc.player.scrollCooldown matches 1.. if score @s lcmc.player.selectedSlot >= @s lcmc.player.previousSlot run scoreboard players remove @s lcmc.player.selectedInventorySlot 1
execute unless score @s lcmc.player.scrollCooldown matches 1.. if score @s lcmc.player.previousSlot matches 7..8 if score @s lcmc.player.selectedSlot matches 0..1 run scoreboard players remove @s lcmc.player.selectedInventorySlot 2
execute unless score @s lcmc.player.scrollCooldown matches 1.. if score @s lcmc.player.previousSlot matches 0..1 if score @s lcmc.player.selectedSlot matches 7..8 run scoreboard players add @s lcmc.player.selectedInventorySlot 2

execute if score @s lcmc.player.selectedInventorySlot matches 5.. run scoreboard players set @s lcmc.player.selectedInventorySlot 1
execute if score @s lcmc.player.selectedInventorySlot matches ..0 run scoreboard players set @s lcmc.player.selectedInventorySlot 4