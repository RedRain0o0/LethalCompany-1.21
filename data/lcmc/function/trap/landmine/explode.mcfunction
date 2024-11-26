scoreboard players reset @s lcmc.trap.landmine.explodeTimer
playsound lcmc:trap.mine.detonate ambient @a ~ ~ ~
item replace entity @s container.0 with minecraft:gray_stained_glass[item_model='lcmc:environment/explosion_decal']
particle minecraft:explosion_emitter
execute on passengers run data merge entity @s {height:-.5}
execute positioned ~ ~.5 ~ as @e[tag=lcmc.entity.Alive,distance=..3.5] run function lcmc:trap/landmine/kill_entity
execute positioned ~ ~.5 ~ as @e[tag=lcmc.entity.Alive,distance=3.5..4] run say Ow :( (butnot as bad)
execute positioned ~ ~.5 ~ as @e[tag=lcmc.player.Alive,distance=..3.5] run function lcmc:trap/landmine/kill_player