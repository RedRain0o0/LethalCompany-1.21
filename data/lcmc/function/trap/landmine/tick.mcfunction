#execute store result storage lcmc:disposable id int 1 run scoreboard players get @s lcmc.trap.landmine.id
execute as @s[tag=!lcmc.trap.landmine.Exploded] as @e[tag=lcmc.trap.landmine.CanDetonate,distance=...75] run function lcmc:trap/landmine/prime
# with storage lcmc:disposable
execute as @e[tag=lcmc.trap.landmine.CanDetonate] run scoreboard players operation @s lcmc.trap.logic.prevLandMine = @s lcmc.trap.logic.currLandMine
scoreboard players set @e[tag=lcmc.trap.landmine.CanDetonate] lcmc.trap.logic.currLandMine 0

execute at @s if score @s lcmc.trap.landmine.beepTimer matches ..0 run function lcmc:trap/landmine/beep

execute at @s if score @s lcmc.trap.landmine.beepTimer matches 55..58 run item replace entity @s container.0 with tnt[minecraft:custom_model_data=101]
execute if score @s[tag=!lcmc.trap.landmine.Exploded] lcmc.trap.landmine.beepTimer matches 1.. run scoreboard players remove @s lcmc.trap.landmine.beepTimer 1

execute if score @s lcmc.trap.landmine.explodeTimer matches 1.. run scoreboard players remove @s lcmc.trap.landmine.explodeTimer 1
execute if score @s lcmc.trap.landmine.explodeTimer matches 0 run function lcmc:trap/landmine/explode

execute as @s[tag=!lcmc.trap.landmine.Primed] run return fail
execute as @s[tag=lcmc.trap.landmine.Primed] if entity @n[tag=lcmc.trap.landmine.StoodOn,distance=...75] run return fail
execute as @s[tag=lcmc.trap.landmine.Exploded] run return fail
say KA-BOOOOOOOM!!!
playsound lcmc:trap.mine.trigger ambient @a ~ ~ ~
scoreboard players set @s lcmc.trap.landmine.explodeTimer 11
tag @s add lcmc.trap.landmine.Exploded
#tag @s remove lcmc.trap.landmine.Primed
