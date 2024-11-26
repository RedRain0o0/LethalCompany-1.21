tag @s remove lcmc.trap.landmine.Primed
tag @s remove lcmc.trap.landmine.Exploded
scoreboard players set @s lcmc.trap.landmine.beepTimer 61
item replace entity @s container.0 with tnt[minecraft:item_model='lcmc:trap/landmine']
execute on passengers run data merge entity @s {height:-.3}