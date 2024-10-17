
execute if score .hit lcmc.player.logic.raycast matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[tag=lcmc.type.Item,dx=0.1,sort=nearest] run function lcmc:player/logic/item/visible
execute unless block ~ ~ ~ #lcmc:raycast_passable run scoreboard players set .hit lcmc.player.logic.raycast 1
scoreboard players add .distance lcmc.player.logic.raycast 1
execute if score .hit lcmc.player.logic.raycast matches 0 if score .distance lcmc.player.logic.raycast matches ..20 positioned ^ ^ ^0.1 run function lcmc:player/logic/item/distance_raycast
