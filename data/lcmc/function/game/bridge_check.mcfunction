execute \
  store result score onBridge lcmc.game.gameState \
  if entity @e[tag=lcmc.player.Alive,predicate=lcmc:moon/test_bridge]

execute \
  if score onBridge lcmc.game.gameState matches 0 \
  unless entity @e[tag=lcmc.entity.ForestKeeper.Root,tag=lcmc.ai.Alive,predicate=lcmc:moon/test_bridge] \
  if score testBridgeHealth lcmc.game.gameState matches 1..9999 \
  run scoreboard players add testBridgeHealth lcmc.game.gameState 2000

execute \
  if score testBridgeHealth lcmc.game.gameState matches 10001.. \
  run scoreboard players set testBridgeHealth lcmc.game.gameState 10000

scoreboard players operation math lcmc.logic.disposable = onBridge lcmc.game.gameState
scoreboard players operation math lcmc.logic.disposable *= onBridge lcmc.game.gameState
scoreboard players operation math lcmc.logic.disposable *= 300 lcmc.math.numbers

execute \
  if score onBridge lcmc.game.gameState matches 1.. \
  if score testBridgeHealth lcmc.game.gameState matches 1.. \
  run scoreboard players operation testBridgeHealth lcmc.game.gameState -= math lcmc.logic.disposable

execute \
  as @a[tag=lcmc.player.Alive,predicate=lcmc:moon/test_bridge,scores={lcmc.player.weight=12..}] \
  if score testBridgeHealth lcmc.game.gameState matches 1.. \
  run function lcmc:game/player_bridge_weight

execute \
  as @e[tag=lcmc.entity.ForestKeeper.Root,tag=lcmc.ai.Alive,predicate=lcmc:moon/test_bridge] \
  if score testBridgeHealth lcmc.game.gameState matches 1.. \
  run scoreboard players remove testBridgeHealth lcmc.game.gameState 1670

