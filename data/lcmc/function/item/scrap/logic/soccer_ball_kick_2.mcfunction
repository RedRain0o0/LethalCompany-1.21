execute as @n[tag=lcmc.item.SoccerBall] positioned 0.0 0.0 0.0 run summon marker ^ ^.25 ^-1 {Tags:[lcmc.item.soccerBall.vector]}
#execute positioned 0 0 0 store result entity @n[tag=SoccerBall] Motion double 0.01 run data get entity @n[tag=lcmc.item.soccerBall.vector] Pos
data modify entity @n[tag=lcmc.item.SoccerBall] Motion set from entity @e[limit=1,tag=lcmc.item.soccerBall.vector] Pos
kill @e[tag=lcmc.item.soccerBall.vector]
tag @s remove lcmc.player.logic.ballKicker