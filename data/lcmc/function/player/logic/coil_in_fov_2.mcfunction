tag @s add lcmc.entity.logic.CurrentCoil

tp @e[tag=lcmc.logic.FOVMarker] ^ ^ ^ ~ ~

execute as @e[tag=lcmc.logic.FOVMarker] store result score @s lcmc.player.moddedFacing.X run data get entity @s Rotation[0]
execute as @e[tag=lcmc.logic.FOVMarker] store result score @s lcmc.player.moddedFacing.Y run data get entity @s Rotation[1]

scoreboard players operation @e[tag=lcmc.logic.FOVMarker] lcmc.player.moddedFacing.X -= @a[tag=lcmc.player.logic.CurrentCaster] lcmc.player.facing.X
scoreboard players operation @e[tag=lcmc.logic.FOVMarker] lcmc.player.moddedFacing.Y -= @a[tag=lcmc.player.logic.CurrentCaster] lcmc.player.facing.Y

execute as @e[tag=lcmc.logic.FOVMarker] if score @s lcmc.player.moddedFacing.Y matches -45..45 if score @s lcmc.player.moddedFacing.X matches -55..55 run scoreboard players set @e[tag=lcmc.entity.logic.CurrentCoil] lcmc.coilhead.inFOV 1

scoreboard players set .hit lcmc.player.logic.raycast 0
scoreboard players set .distance lcmc.player.logic.raycast 0
scoreboard players set @s lcmc.coilhead.isVisible 0
execute if score @s lcmc.coilhead.inFOV matches 1 as @e[tag=lcmc.logic.FOVMarker] at @s run function lcmc:entity/coilhead/raycast

tag @s remove lcmc.entity.logic.CurrentCoil