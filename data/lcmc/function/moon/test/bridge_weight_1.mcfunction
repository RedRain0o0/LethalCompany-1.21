scoreboard players operation math lcmc.logic.disposable = @s lcmc.player.weight
scoreboard players add math lcmc.logic.disposable 105
scoreboard players operation math lcmc.logic.disposable *= 900 lcmc.math.numbers
scoreboard players operation math lcmc.logic.disposable /= 105 lcmc.math.numbers
execute if score onBridge lcmc.game.gameState matches 1.. if score testBridgeHealth lcmc.game.gameState matches 1.. run scoreboard players operation testBridgeHealth lcmc.game.gameState -= math lcmc.logic.disposable