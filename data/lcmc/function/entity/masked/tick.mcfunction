tag @s add lcmc.entity.masked.Current
execute on passengers as @s[tag=lcmc.entity.masked.HeadRoot] on passengers as @s[tag=lcmc.entity.masked.Head] run tag @s add lcmc.entity.masked.CurrentHead
execute on passengers as @s[tag=lcmc.entity.masked.BodyRoot] run tag @s add lcmc.entity.masked.CurrentBody

execute as @e[tag=lcmc.entity.masked.CurrentHead] store result score @s lcmc.entity.generic.rotation.X run data get entity @s Rotation[0] 10
execute as @e[tag=lcmc.entity.masked.CurrentBody] store result score @s lcmc.entity.generic.rotation.X run data get entity @s Rotation[0] 10



execute as @n[type=player,tag=lcmc.player.Alive,distance=..5] at @s anchored eyes rotated 0 0 run rotate @n[tag=lcmc.entity.masked.CurrentHead] facing ^ ^-.2 ^

execute if entity @n[type=player,tag=lcmc.entity.masked.Target,distance=17..] if score @s lcmc.masked.targetRange matches 1 run scoreboard players set @s lcmc.masked.targetRange 2
execute if entity @n[type=player,tag=lcmc.entity.masked.Target,distance=6..12] unless score @s lcmc.masked.targetRange matches 1 run scoreboard players set @s lcmc.masked.targetRange 1
execute if entity @n[type=player,tag=lcmc.entity.masked.Target,distance=..6] if score @s lcmc.masked.targetRange matches 1 run scoreboard players set @s lcmc.masked.targetRange 0
execute as @n[type=player,tag=lcmc.player.Alive,distance=..1] run function lcmc:entity/masked/catch_player

execute if score @s lcmc.masked.targetRange matches 0 unless score @s lcmc.masked.targetRangePrev matches 0 run function lcmc:entity/masked/phases/follow/arms_up
execute if score @s lcmc.masked.targetRange matches 1 unless score @s lcmc.masked.targetRangePrev matches 1 run function lcmc:entity/masked/phases/follow/walk
execute if score @s lcmc.masked.targetRange matches 2 unless score @s lcmc.masked.targetRangePrev matches 2 run function lcmc:entity/masked/phases/follow/run

scoreboard players operation @s lcmc.masked.targetRangePrev = @s lcmc.masked.targetRange




#execute if entity @n[type=player,tag=lcmc.player.Alive,distance=..5] run tag @s add lcmc.ai.Moving.F
execute facing entity @n[type=player,tag=lcmc.player.Alive] feet run rotate @s ~ 0
execute as @s[tag=lcmc.ai.Moving.F] run tp @s ^ ^ ^.05
execute store result score @s lcmc.entity.generic.rotation.X run data get entity @s Rotation[0] 10
execute as @s[tag=lcmc.ai.Moving.F] at @s rotated as @s as @n[tag=lcmc.entity.masked.CurrentBody] run function lcmc:entity/masked/face_moving
tag @s[tag=lcmc.ai.Moving.F] remove lcmc.ai.Moving.F

function lcmc:entity/masked/body_yaw

tag @n[type=item_display,tag=lcmc.entity.masked.CurrentHead] remove lcmc.entity.masked.CurrentHead
tag @n[type=item_display,tag=lcmc.entity.masked.CurrentBody] remove lcmc.entity.masked.CurrentBody
tag @s remove lcmc.entity.masked.Current