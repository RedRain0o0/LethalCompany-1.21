tag @s add CurrentCoil

tp @e[tag=FOVMarker] ^ ^ ^ ~ ~

execute as @e[tag=FOVMarker] store result score @s lcmc.player.moddedFacing.X run data get entity @s Rotation[0]
execute as @e[tag=FOVMarker] store result score @s lcmc.player.moddedFacing.Y run data get entity @s Rotation[1]

scoreboard players operation @e[tag=FOVMarker] lcmc.player.moddedFacing.X -= @a[tag=CurrentCaster] lcmc.player.facing.X
scoreboard players operation @e[tag=FOVMarker] lcmc.player.moddedFacing.Y -= @a[tag=CurrentCaster] lcmc.player.facing.Y

execute as @e[tag=FOVMarker] if score @s lcmc.player.moddedFacing.Y matches -45..45 if score @s lcmc.player.moddedFacing.X matches -55..55 run scoreboard players set @e[tag=CurrentCoil] lcmc.coilhead.isWatched 1

scoreboard players set .hit lcmc.player.logic.raycast 0
scoreboard players set .distance lcmc.player.logic.raycast 0
scoreboard players set @s lcmc.coilhead.isVisible 0
execute if score @s lcmc.coilhead.isWatched matches 1 as @e[tag=FOVMarker] at @s run function lcmc:enemy/coilhead/raycast

tag @s remove CurrentCoil