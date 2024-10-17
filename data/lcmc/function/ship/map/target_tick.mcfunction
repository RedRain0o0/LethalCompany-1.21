execute store result score X lcmc.ship.map.targetPosition run data get entity @s Pos[0] 100
execute store result score Y lcmc.ship.map.targetPosition run data get entity @s Pos[2] 100
scoreboard players operation X lcmc.ship.map.targetPosition %= 100 lcmc.math.numbers
scoreboard players operation Y lcmc.ship.map.targetPosition %= 100 lcmc.math.numbers
scoreboard players remove X lcmc.ship.map.targetPosition 100
execute if score X lcmc.ship.map.targetPosition matches ..-1 run scoreboard players operation X lcmc.ship.map.targetPosition *= -1 lcmc.math.numbers
scoreboard players remove Y lcmc.ship.map.targetPosition 100
execute if score Y lcmc.ship.map.targetPosition matches ..-1 run scoreboard players operation Y lcmc.ship.map.targetPosition *= -1 lcmc.math.numbers

scoreboard players operation X lcmc.ship.map.targetPosition -= 100 lcmc.math.numbers
scoreboard players operation Y lcmc.ship.map.targetPosition -= 100 lcmc.math.numbers

data merge entity @n[tag=lcmc.ship.map.Display.TargetPointer] {transformation:{scale:[0,0,0]}}
execute as @s[tag=lcmc.ship.map.TargetPointer] run data merge entity @n[tag=lcmc.ship.map.Display.TargetPointer] {transformation:{scale:[0.5,0.5,0.5]}}
data modify storage lcmc:disposable rotation set value {axis:[0f,-1f,0f]}
execute store result storage lcmc:disposable rotation.angle float 0.00001745329 run data get entity @n[tag=lcmc.ship.map.Target] Rotation[0] 1000
data modify entity @n[tag=lcmc.ship.map.Display.TargetPointer] transformation.left_rotation set from storage lcmc:disposable rotation

function lcmc:ship/map/tp_markers
execute as @e[tag=lcmc.ship.map.Display] run data remove entity @s block_state
function lcmc:ship/map/set_state

#scoreboard players operation X.Half lcmc.ship.map.targetPosition = X lcmc.ship.map.targetPosition
#scoreboard players operation X.Half lcmc.ship.map.targetPosition /= 2 lcmc.math.numbers

execute as @e[tag=lcmc.ship.map.Display.World] store result entity @s transformation.translation[0] float 0.0025 run scoreboard players get X lcmc.ship.map.targetPosition
execute as @e[tag=lcmc.ship.map.Display.World] store result entity @s transformation.translation[2] float 0.0025 run scoreboard players get Y lcmc.ship.map.targetPosition

tp @e[tag=lcmc.ship.map.Marker] 0 0 0