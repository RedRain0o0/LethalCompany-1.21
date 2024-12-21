say Ow!
$scoreboard players set staminaRefund lcmc.logic.disposable $(damageAmount)00
scoreboard players operation staminaRefund lcmc.logic.disposable /= 125 lcmc.math.numbers
scoreboard players operation @s lcmc.player.stamina += staminaRefund lcmc.logic.disposable
tellraw @s {"score": {"name": "staminaRefund","objective": "lcmc.logic.disposable"}}
scoreboard players set @s lcmc.player.fear 100
scoreboard players set @s lcmc.player.logic.fearDecrease 21