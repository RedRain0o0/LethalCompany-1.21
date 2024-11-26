data modify storage lcmc:disposable entity set value 'test'
execute store result storage lcmc:disposable id int 1 run scoreboard players get @s lcmc.entity.test.id
execute store result storage lcmc:disposable searchradius float 0.01 run scoreboard players get searchRadius lcmc.entity.test
execute store result storage lcmc:disposable speed float 0.01 run scoreboard players get speed lcmc.entity.test
execute store result storage lcmc:disposable pathindex int 1 run scoreboard players get @s lcmc.entity.ai.pathIndex
scoreboard players operation pathIndex lcmc.logic.disposable = @s lcmc.entity.ai.pathIndex
scoreboard players operation pathIndex lcmc.logic.disposable -= 1 lcmc.math.numbers
execute store result storage lcmc:disposable pathindex int 1 run scoreboard players get @s lcmc.entity.ai.pathIndex
execute store result storage lcmc:disposable nextpathindex int 1 run scoreboard players get pathIndex lcmc.logic.disposable
function lcmc:entity/logic/pathfinding/global_roam with storage lcmc:disposable
