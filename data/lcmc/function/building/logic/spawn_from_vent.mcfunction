execute store result score indoorSpawnCooldown lcmc.game.gameState run random value 40..45
execute store result score indoorEntityValue lcmc.game.gameState run random value 1..3
execute as @e[tag=Vent,limit=1,sort=random] at @s at @n[tag=VentSpawnPoint] run function lcmc:enemy/logic/spawn
execute as @e[tag=Vent,limit=1,sort=random] at @s run kill @n[tag=VentSpawnPoint]
execute as @e[tag=Vent,limit=1,sort=random] at @s run setblock ~ ~ ~ beehive[honey_level=1]
execute as @e[tag=Vent,limit=1,sort=random] run kill @s