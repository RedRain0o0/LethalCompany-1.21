execute as @e[tag=CoilHeadRoot] run data merge entity @s {NoAI:0b}
scoreboard players set @e[tag=CoilHeadRoot] lcmc.coilhead.inFOV 0
execute as @a[tag=Player,tag=Alive] store result score @s lcmc.player.facing.X run data get entity @s Rotation[0]
execute as @a[tag=Player,tag=Alive] store result score @s lcmc.player.facing.Y run data get entity @s Rotation[1]
execute as @a[tag=Player,tag=Alive] at @s anchored eyes run function lcmc:player/logic/coil_in_fov
tp @e[tag=FOVMarker] 0 0 0
execute as @e[tag=CoilHeadRoot] run title @a actionbar {"score":{"name":"@s","objective":"lcmc.coilhead.isVisible"},"extra":[{"text":" "},{"score":{"name":"@s","objective":"lcmc.coilhead.wasVisible"}}]}
execute as @e[tag=CoilHeadRoot] run scoreboard players operation @s lcmc.coilhead.isVisible >< @s lcmc.coilhead.wasVisible

execute at @e[tag=CoilHeadRoot] as @e[tag=aj.coilhead.root] if score @s lcmc.coilhead.instaneId = @e[tag=CoilHeadRoot,sort=nearest,limit=1] lcmc.coilhead.instaneId run tp @s ~ ~ ~ ~ 0


# execute as @e[tag=aj.coilhead.root] at @e[tag=CoilHeadRoot] run tp @s ~ ~ ~ ~ 0
# if score @s lcmc.coilhead.instaneId = @e[tag=CoilHeadRoot,limit=1] lcmc.coilhead.instaneId run tp @s ~ ~ ~ ~ 0

# execute as @n[tag=aj.coilhead.root] if score @n[tag=CoilHeadRoot] lcmc.coilhead.isVisible = @n[tag=CoilHeadRoot] lcmc.coilhead.wasVisible run function animated_java:coilhead/animations/animation_coilhead_stop/play