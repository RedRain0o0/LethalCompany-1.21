tag @s add lcmc.player.logic.CurrentCaster

execute as @e[tag=lcmc.entity.CoilHeadRoot,distance=..50] facing entity @s eyes run function lcmc:player/logic/coil_in_fov_2

tag @s remove lcmc.player.logic.CurrentCaster