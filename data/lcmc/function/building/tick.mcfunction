execute if score indoorSpawnCooldown lcmc.game.gameState matches 0 run function lcmc:building/logic/spawn_from_vent
execute if score indoorSpawnCooldown lcmc.game.gameState matches 1.. run scoreboard players remove indoorSpawnCooldown lcmc.game.gameState 1
