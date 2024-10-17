scoreboard players set @s lcmc.player.logic.currWhoopee 1
execute unless score @s lcmc.player.logic.prevWhoopee = @s lcmc.player.logic.currWhoopee run playsound lc:scrap.whoopie_cushion.fart player @s ~ ~ ~ 1 1
execute unless score @s lcmc.player.logic.prevWhoopee = @s lcmc.player.logic.currWhoopee at @n[tag=lcmc.item.WhoopeeCushion] run summon snowball ~ ~ ~