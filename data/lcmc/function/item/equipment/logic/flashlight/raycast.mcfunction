
execute unless block ~ ~ ~ #lcmc:raycast_passable run scoreboard players set hit lcmc.player.logic.raycast 1
execute if score hit lcmc.player.logic.raycast matches 0 if block ~ ~ ~ #air if score distance lcmc.player.logic.raycast matches 0..3 run summon marker ~ ~ ~ {Tags:['lcmc.logic.light.LightSpawn','lcmc.item.logic.flashlight.Light.3']}
execute if score hit lcmc.player.logic.raycast matches 0 if block ~ ~ ~ #air if score distance lcmc.player.logic.raycast matches 4..9 run summon marker ~ ~ ~ {Tags:['lcmc.logic.light.LightSpawn','lcmc.item.logic.flashlight.Light.5']}
execute if score hit lcmc.player.logic.raycast matches 0 if block ~ ~ ~ #air if score distance lcmc.player.logic.raycast matches 10..15 run summon marker ~ ~ ~ {Tags:['lcmc.logic.light.LightSpawn','lcmc.item.logic.flashlight.Light.7']}
execute if score hit lcmc.player.logic.raycast matches 0 if block ~ ~ ~ #air if score distance lcmc.player.logic.raycast matches 16..20 run summon marker ~ ~ ~ {Tags:['lcmc.logic.light.LightSpawn','lcmc.item.logic.flashlight.Light.9']}
execute if score hit lcmc.player.logic.raycast matches 1 positioned ^ ^ ^-.5 if block ~ ~ ~ #air if score distance lcmc.player.logic.raycast matches ..3 run summon marker ~ ~ ~ {Tags:['lcmc.logic.light.LightSpawn','lcmc.item.logic.flashlight.Light.15']}
execute if score hit lcmc.player.logic.raycast matches 1 positioned ^ ^ ^-.5 if block ~ ~ ~ #air if score distance lcmc.player.logic.raycast matches 4..9 run summon marker ~ ~ ~ {Tags:['lcmc.logic.light.LightSpawn','lcmc.item.logic.flashlight.Light.13']}
execute if score hit lcmc.player.logic.raycast matches 1 positioned ^ ^ ^-.5 if block ~ ~ ~ #air if score distance lcmc.player.logic.raycast matches 10..15 run summon marker ~ ~ ~ {Tags:['lcmc.logic.light.LightSpawn','lcmc.item.logic.flashlight.Light.11']}
execute if score hit lcmc.player.logic.raycast matches 1 positioned ^ ^ ^-.5 if block ~ ~ ~ #air if score distance lcmc.player.logic.raycast matches 16..19 run summon marker ~ ~ ~ {Tags:['lcmc.logic.light.LightSpawn','lcmc.item.logic.flashlight.Light.9']}
scoreboard players add distance lcmc.player.logic.raycast 1
execute if score hit lcmc.player.logic.raycast matches 0 if score distance lcmc.player.logic.raycast matches ..20 positioned ^ ^ ^0.5 run function lcmc:item/equipment/logic/flashlight/raycast
