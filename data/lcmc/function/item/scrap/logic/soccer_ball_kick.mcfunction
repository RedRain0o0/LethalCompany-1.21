tag @s add lcmc.player.logic.ballKicker
execute as @n[tag=lcmc.item.SoccerBall] run scoreboard players set @s lcmc.item.logic.kickCooldown 6
execute as @n[tag=lcmc.item.SoccerBall] facing entity @n[tag=lcmc.player.logic.ballKicker] feet run tp @s ~ ~ ~ ~ 0