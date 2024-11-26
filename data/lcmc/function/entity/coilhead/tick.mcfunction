data merge entity @s {NoAI:0b}
scoreboard players set @s lcmc.coilhead.inFOV 0
execute as @a[tag=lcmc.player.Player,tag=lcmc.player.Alive] store result score @s lcmc.player.facing.X run data get entity @s Rotation[0]
execute as @a[tag=lcmc.player.Player,tag=lcmc.player.Alive] store result score @s lcmc.player.facing.Y run data get entity @s Rotation[1]
execute as @a[tag=lcmc.player.Player,tag=lcmc.player.Alive] at @s anchored eyes run function lcmc:player/logic/coil_in_fov
tp @e[tag=lcmc.logic.FOVMarker] 0 0 0

execute at @e[tag=aj.coilhead.root] as @e[tag=lcmc.entity.CoilHeadRoot] if score @s lcmc.coilhead.instaneId = @e[tag=lcmc.entity.CoilHeadRoot,sort=nearest,limit=1] lcmc.coilhead.instaneId unless score @s lcmc.coilhead.isVisible = @s lcmc.coilhead.wasVisible as @n[tag=aj.coilhead.root] run function animated_java:coilhead/animations/animation_coilhead_stop/play

#execute as @e[tag=CoilHeadRoot] run title @a actionbar {"score":{"name":"@s","objective":"lcmc.coilhead.isVisible"},"extra":[{"text":" "},{"score":{"name":"@s","objective":"lcmc.coilhead.wasVisible"}}]}
scoreboard players operation @s lcmc.coilhead.isVisible >< @s lcmc.coilhead.wasVisible

execute at @e[tag=lcmc.entity.CoilHeadRoot] as @e[tag=aj.coilhead.root] if score @s lcmc.coilhead.instaneId = @e[tag=lcmc.entity.CoilHeadRoot,sort=nearest,limit=1] lcmc.coilhead.instaneId run tp @s ~ ~ ~ ~ 0


# execute as @e[tag=aj.coilhead.root] at @e[tag=CoilHeadRoot] run tp @s ~ ~ ~ ~ 0
# if score @s lcmc.coilhead.instaneId = @e[tag=CoilHeadRoot,limit=1] lcmc.coilhead.instaneId run tp @s ~ ~ ~ ~ 0
