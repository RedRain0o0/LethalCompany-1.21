scoreboard players reset @s lcmc.trap.landmine.explodeTimer
playsound lcmc:trap.mine.detonate ambient @a ~ ~ ~
item replace entity @s container.0 with light_gray_stained_glass[minecraft:custom_model_data=1]
particle minecraft:explosion_emitter
execute positioned ~ ~.5 ~ as @e[tag=lcmc.enemy.Alive,distance=..3.5] run function lcmc:trap/landmine/kill_enemy
execute positioned ~ ~.5 ~ as @e[tag=lcmc.enemy.Alive,distance=3.5..4] run say Ow :( (butnot as bad)
execute positioned ~ ~.5 ~ as @e[tag=lcmc.player.Alive,distance=..3.5] run function lcmc:trap/landmine/kill_player