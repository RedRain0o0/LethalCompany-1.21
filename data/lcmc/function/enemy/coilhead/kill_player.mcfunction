summon armor_stand ~ ~1.4 ~ {Invulnerable:1b,Small:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["PlayerHead","ForCleanup"],DisabledSlots:16,ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",count:1,components:{"minecraft:custom_model_data":20}}]}
execute store result entity @n[tag=PlayerHead] Rotation[0] float 1 run data get entity @s Rotation[0]
data merge entity @n[tag=PlayerHead] {Motion:[0d,1d,0d]}
execute store result entity @n[tag=PlayerHead] Motion[0] double 0.01 run random value -20..20
execute store result entity @n[tag=PlayerHead] Motion[2] double 0.01 run random value -20..20
summon armor_stand ~ ~ ~ {Invulnerable:1b,Small:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["CoiledCorpse","PlayerCorpse","ForCleanup","NewCorpse"],DisabledSlots:16,ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",count:1,components:{"minecraft:custom_model_data":21}}]}
execute store result entity @n[tag=PlayerCorpse] Rotation[0] float 1 run data get entity @s Rotation[0]
scoreboard players set @n[tag=CoiledCorpse] lcmc.player.coilTimer 28
scoreboard players set @s lcmc.player.health 0
tag @s remove Alive
tag @s add Dead
gamemode spectator @s
