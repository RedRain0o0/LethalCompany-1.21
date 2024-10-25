particle bubble ~ ~ ~
execute store result storage lcmc:disposable distance int 1 run scoreboard players get distance lcmc.logic.disposable
execute store result storage lcmc:disposable hit int 1 run scoreboard players get hit lcmc.logic.disposable
execute store result storage lcmc:disposable cansee int 1 run scoreboard players get canSee lcmc.logic.disposable
$tellraw @a[tag=lcmc.player.Debug.AI] {"translate":"lcmc.aiDebug.raycast","with":[{"text":"$(enemy)"},{"text":"$(id)"},{"text":"$(distance)"},{"text":"$(hit)"},{"text":"$(cansee)"}]}
$execute if score hit lcmc.logic.disposable matches 0 as @n[tag=lcmc.enemy.$(enemy).ai.$(id).Path.$(cn),distance=...15] run function lcmc:enemy/logic/pathfinding/can_see with storage lcmc:disposable
execute unless block ~ ~ ~ #lcmc:raycast_passable run scoreboard players set hit lcmc.logic.disposable 1
execute unless block ~ ~ ~ #lcmc:raycast_passable run tellraw @a[tag=lcmc.player.Debug.AI] {"text":"InBlock"}
scoreboard players add distance lcmc.logic.disposable 1
execute if score hit lcmc.logic.disposable matches 0 if score distance lcmc.logic.disposable matches ..500 positioned ^ ^ ^0.1 run function lcmc:enemy/logic/pathfinding/raycast with storage lcmc:disposable