data modify storage lcmc:disposable enemy set value 'test'
execute store result storage lcmc:disposable id int 1 run scoreboard players get @s lcmc.enemy.test.id
execute store result storage lcmc:disposable searchradius float 0.01 run scoreboard players get searchRadius lcmc.enemy.test
execute store result storage lcmc:disposable speed float 0.01 run scoreboard players get speed lcmc.enemy.test
execute store result storage lcmc:disposable pathindex int 1 run scoreboard players get @s lcmc.enemy.ai.pathIndex
scoreboard players operation pathIndex lcmc.logic.disposable = @s lcmc.enemy.ai.pathIndex
scoreboard players operation pathIndex lcmc.logic.disposable -= 1 lcmc.math.numbers
execute store result storage lcmc:disposable pathindex int 1 run scoreboard players get @s lcmc.enemy.ai.pathIndex
execute store result storage lcmc:disposable nextpathindex int 1 run scoreboard players get pathIndex lcmc.logic.disposable
function lcmc:enemy/logic/pathfinding/global_roam with storage lcmc:disposable
