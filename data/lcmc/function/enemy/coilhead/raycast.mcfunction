execute if score .hit lcmc.player.logic.raycast matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[tag=CurrentCoil,dx=0.1,sort=nearest] run function lcmc:enemy/coilhead/visible
execute unless block ~ ~ ~ #lcmc:raycast_passable run scoreboard players set .hit lcmc.player.logic.raycast 1
scoreboard players add .distance lcmc.player.logic.raycast 1
execute if score .hit lcmc.player.logic.raycast matches 0 if score .distance lcmc.player.logic.raycast matches ..500 positioned ^ ^ ^0.1 run function lcmc:enemy/coilhead/raycast