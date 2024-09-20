execute store success score @s lcmc.eyelessDog.hasHeard run data get entity @s listener.event.distance
execute unless score @s lcmc.eyelessDog.hasHeard matches 1 run return fail
scoreboard players set @s lcmc.eyelessDog.listenerCooldown 3
say I Heard That!
execute store result score @s lcmc.eyelessDog.soundCoords.X run data get entity @s listener.event.pos[0] 100
execute store result score @s lcmc.eyelessDog.soundCoords.Y run data get entity @s listener.event.pos[1] 100
execute store result score @s lcmc.eyelessDog.soundCoords.Z run data get entity @s listener.event.pos[2] 100
title @a actionbar {"score":{"name":"@s","objective":"lcmc.eyelessDog.soundCoords.X"},"extra":[{"text":" "},{"score":{"name":"@s","objective":"lcmc.eyelessDog.soundCoords.Y"}},{"text":" "},{"score":{"name":"@s","objective":"lcmc.eyelessDog.soundCoords.Z"}}]}
