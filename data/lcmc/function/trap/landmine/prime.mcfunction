scoreboard players set @s lcmc.trap.logic.currLandMine 1
tag @s add lcmc.trap.landmine.StoodOn
scoreboard players operation @s lcmc.player.stoodMine = @n[tag=lcmc.trap.LandMine] lcmc.trap.landmine.id
tag @n[tag=lcmc.trap.LandMine] add lcmc.trap.landmine.Primed
execute as @s[tag=!lcmc.trap.landmine.Primed] unless score @s lcmc.trap.logic.currLandMine = @s lcmc.trap.logic.prevLandMine run playsound lcmc:trap.mine.prime player @s ~ ~ ~ 1 1
