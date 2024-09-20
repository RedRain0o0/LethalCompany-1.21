tag @s add CurrentCaster

execute as @e[tag=CoilHeadRoot,distance=..50] facing entity @s eyes run function lcmc:player/logic/coil_in_fov_2

tag @s remove CurrentCaster