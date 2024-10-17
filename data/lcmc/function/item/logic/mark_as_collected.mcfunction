tag @s add lcmc.item.logic.Collected

$advancement grant @a[tag=lcmc.player.Alive] only lcmc:item/collected_display/$(scrap)
#$advancement revoke @a[tag=lcmc.player.Alive] only lcmc:item/collected_display/$(scrap)

say collected

data modify entity @s HandItems[1].components."minecraft:custom_data".Collected set from entity @e[tag=lcmc.logic.Collected,limit=1] item.components."minecraft:custom_data".Collected

tag @s add lcmc.item.logic.Verified