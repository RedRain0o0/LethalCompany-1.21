execute if score currAmount lcmc.enemy.coilhead >= maxAmount lcmc.enemy.coilhead run return run kill @s
data merge entity @s {HandItems:[{},{}],ArmorItems:[{},{},{},{}],Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["lcmc.entity.CoilHeadRoot","lcmc.type.Enemy"],attributes:[{id:"minecraft:generic.attack_speed",base:.2},{id:"minecraft:generic.movement_speed",base:0.75}]}
effect give @s invisibility infinite 255 true
execute store result score @s lcmc.coilhead.instaneId run scoreboard players operation currAmount lcmc.enemy.coilhead += 1 lcmc.math.numbers
function animated_java:coilhead/summon/default
scoreboard players operation @n[tag=aj.coilhead.root] lcmc.coilhead.instaneId = @s lcmc.coilhead.instaneId