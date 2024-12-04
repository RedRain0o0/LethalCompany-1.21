execute \
  as @s[tag=lcmc.entity.Player] \
  store result storage lcmc:disposable water.yOffset float 0.001 \
  run scoreboard players get eyeOffset lcmc.entity.player

execute \
  as @s[tag=lcmc.entity.Player,predicate=lcmc:player/logic/crouched] \
  store result storage lcmc:disposable water.yOffset float 0.001 \
  run scoreboard players get eyeOffsetCrouched lcmc.entity.player

execute \
  as @s[tag=lcmc.entity.Masked] \
  store result storage lcmc:disposable water.yOffset float 0.001 \
  run scoreboard players get eyeOffset lcmc.entity.masked