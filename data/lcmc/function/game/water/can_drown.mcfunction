execute \
  as @s[tag=lcmc.entity.Player] \
  store result storage lcmc:disposable water.yOffset int 1 \
  run scoreboard players get eyeOffset lcmc.entity.player

execute \
  as @s[tag=lcmc.entity.Player,predicate=lcmc:player/crouched] \
  store result storage lcmc:disposable water.yOffset int 1 \
  run scoreboard players get eyeOffsetCrouched lcmc.entity.player

execute \
  as @s[tag=lcmc.entity.Masked] \
  store result storage lcmc:disposable water.yOffset int 1 \
  run scoreboard players get eyeOffset lcmc.entity.masked