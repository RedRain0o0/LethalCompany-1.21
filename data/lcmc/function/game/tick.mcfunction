## Bridge
execute if score bridgeTimer lcmc.game.gameState matches 1.. run scoreboard players remove bridgeTimer lcmc.game.gameState 1
execute if score bridgeTimer lcmc.game.gameState matches 0 run function lcmc:game/bridge_check
execute if score bridgeTimer lcmc.game.gameState matches 0 run scoreboard players set bridgeTimer lcmc.game.gameState 20
tellraw @a[tag=lcmc.player.Debug.Brige] {"score":{"name":"bridgeTimer","objective":"lcmc.game.gameState"}}


## Time
execute if score timeDelay lcmc.game.time matches ..0 run function lcmc:game/time
scoreboard players remove timeDelay lcmc.game.time 1