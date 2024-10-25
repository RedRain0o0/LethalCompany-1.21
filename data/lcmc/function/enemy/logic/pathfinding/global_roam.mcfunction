# $tag @n[tag=lcmc.building.logic.AINode,distance=..$(searchradius)] add lcmc.enemy.$(enemy).ai.$(id).Checked
# #execute rotated as @s positioned 0.0 0.0 0.0 run summon marker ^ ^ ^.1 {Tags:[lcmc.enemy.test.MotionVector]}
# #tellraw @a {"nbt":"Pos","entity":"@e[tag=lcmc.enemy.test.MotionVector]"}
# $execute facing entity @n[tag=lcmc.building.logic.AINode,tag=!lcmc.enemy.$(enemy).ai.$(id).Checked] eyes run tp @s ^ ^ ^$(speed) ~ 0

tag @s add lcmc.logic.pathfinding.Current

$execute at @s as @n[tag=lcmc.enemy.$(enemy).ai.$(id).Target.C,distance=..$(searchradius)] run tag @s remove lcmc.enemy.$(enemy).ai.$(id).Target.C

$tellraw @a[tag=lcmc.player.Debug.AI] {"translate":"lcmc.aiDebug.pathfinding","with":[{"text":"$(enemy)"},{"text":"$(id)"},{"text":"$(speed)"},{"text":"$(searchradius)"}]}

scoreboard players set canSeeCurr lcmc.logic.disposable 0
scoreboard players set canSeeNext lcmc.logic.disposable 0

$execute if score @s lcmc.enemy.ai.lookingForPath matches 1 facing entity @n[tag=lcmc.enemy.$(enemy).ai.$(id).Target] feet rotated ~ 0 run function lcmc:enemy/logic/pathfinding/find_path with storage lcmc:disposable
scoreboard players set canSee lcmc.logic.disposable 0
scoreboard players set hit lcmc.logic.disposable 0
scoreboard players set distance lcmc.logic.disposable 0
data modify storage lcmc:disposable cn set value 'C'
$execute if score @s lcmc.enemy.ai.lookingForPath matches 0 anchored feet facing entity @n[tag=lcmc.enemy.$(enemy).ai.$(id).Path.C] feet rotated ~ 0 run function lcmc:enemy/logic/pathfinding/raycast with storage lcmc:disposable
$execute if score @s lcmc.enemy.ai.lookingForPath matches 0 anchored feet facing entity @n[tag=lcmc.enemy.$(enemy).ai.$(id).Path.C] feet rotated ~ 0 if score canSee lcmc.logic.disposable matches 1 run scoreboard players set canSeeCurr lcmc.logic.disposable 1
scoreboard players set canSee lcmc.logic.disposable 0
scoreboard players set hit lcmc.logic.disposable 0
scoreboard players set distance lcmc.logic.disposable 0
data modify storage lcmc:disposable cn set value 'N'
$execute if score @s lcmc.enemy.ai.lookingForPath matches 0 anchored feet facing entity @n[tag=lcmc.enemy.$(enemy).ai.$(id).Path.N] feet rotated ~ 0 run function lcmc:enemy/logic/pathfinding/raycast with storage lcmc:disposable
$execute if score @s lcmc.enemy.ai.lookingForPath matches 0 anchored feet facing entity @n[tag=lcmc.enemy.$(enemy).ai.$(id).Path.N] feet rotated ~ 0 if score canSee lcmc.logic.disposable matches 1 run scoreboard players set canSeeNext lcmc.logic.disposable 1

execute if score @s lcmc.enemy.ai.canSeeNext matches ..5 if score canSeeNext lcmc.logic.disposable matches 1 run scoreboard players add @s lcmc.enemy.ai.canSeeNext 1
execute if score canSeeNext lcmc.logic.disposable matches 0 run scoreboard players set @s lcmc.enemy.ai.canSeeNext 0

$execute if entity @n[tag=lcmc.enemy.$(enemy).ai.$(id).Path.N] unless score @s lcmc.enemy.ai.canSeeNext matches 6 if entity @n[tag=lcmc.enemy.$(enemy).ai.$(id).Path.C,distance=...3] run scoreboard players set @s lcmc.enemy.ai.canSeeNext 11
$execute if entity @n[tag=lcmc.enemy.$(enemy).ai.$(id).Path.N] if score @s lcmc.enemy.ai.canSeeNext matches 6 run tag @e[tag=lcmc.enemy.$(enemy).ai.$(id).Path.C] remove lcmc.enemy.$(enemy).ai.$(id).Path.C
$execute if entity @n[tag=lcmc.enemy.$(enemy).ai.$(id).Path.N] if score @s lcmc.enemy.ai.canSeeNext matches 6 run tag @n[tag=lcmc.enemy.$(enemy).ai.$(id).Path.N] add lcmc.enemy.$(enemy).ai.$(id).Path.C
$execute if entity @n[tag=lcmc.enemy.$(enemy).ai.$(id).Path.N] if score @s lcmc.enemy.ai.canSeeNext matches 6 run tag @n[tag=lcmc.enemy.$(enemy).ai.$(id).Path.N] remove lcmc.enemy.$(enemy).ai.$(id).Path.N
$execute unless entity @n[tag=lcmc.enemy.$(enemy).ai.$(id).Path.N] if score @s lcmc.enemy.ai.canSeeNext matches 6 run scoreboard players set @s lcmc.enemy.ai.canSeeNext 0
$execute unless entity @e[tag=lcmc.enemy.$(enemy).ai.$(id).Path.N] unless score @s lcmc.enemy.ai.pathIndex matches ..0 run scoreboard players remove @s lcmc.enemy.ai.pathIndex 1

$execute unless entity @e[tag=lcmc.enemy.$(enemy).ai.$(id).Path.N] run tag @n[nbt={item:{components:{"minecraft:custom_data":{$(enemy).$(id).Path:$(pathindex)}}}}] add lcmc.enemy.$(enemy).ai.$(id).Path.C
$execute unless entity @e[tag=lcmc.enemy.$(enemy).ai.$(id).Path.N] run tag @n[nbt={item:{components:{"minecraft:custom_data":{$(enemy).$(id).Path:$(nextpathindex)}}}}] add lcmc.enemy.$(enemy).ai.$(id).Path.N
$execute if score canSeeCurr lcmc.logic.disposable matches 1 facing entity @n[tag=lcmc.enemy.$(enemy).ai.$(id).Path.C] feet run tp @s ^ ^ ^$(speed) ~ 0
#$execute as @n[tag=lcmc.enemy.$(enemy).ai.$(id).Target,distance=..$(searchradius)] run scoreboard players set reachedTarget lcmc.logic.disposable 1

tag @s remove lcmc.logic.pathfinding.Current