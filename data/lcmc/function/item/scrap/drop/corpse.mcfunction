execute on origin if score @s lcmc.player.selectedInventorySlot matches 1 run item replace entity @s enderchest.0 with air
execute on origin if score @s lcmc.player.selectedInventorySlot matches 2 run item replace entity @s enderchest.1 with air
execute on origin if score @s lcmc.player.selectedInventorySlot matches 3 run item replace entity @s enderchest.2 with air
execute on origin if score @s lcmc.player.selectedInventorySlot matches 4 run item replace entity @s enderchest.3 with air
execute on origin rotated as @s rotated ~ 0 if block ^ ^ ^1 air run summon armor_stand ^ ^ ^1 {Tags:['Scrap','Item','Corpse','TwoHanded','Unchecked'],DisabledSlots:17,Invulnerable:1b,ShowArms:1b,Small:1b,Invisible:1b,PersistenceRequired:1b,HandItems:[{},{id:"minecraft:rotten_flesh",count:1b,components:{custom_name:'{"translate":"scrap.lc.corpse","italic":false}',custom_model_data:19,"!minecraft:food":{},custom_data:{Sellable:1b,TwoHanded:1b,HideArms:1b,Corpse:1b,Weight:19,Value:5}}}],ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",count:1b,components:{custom_model_data:12}}]}
execute on origin rotated as @s rotated ~ 0 unless block ^ ^ ^1 air run summon armor_stand ^ ^ ^ {Tags:['Scrap','Item','Corpse','TwoHanded','Unchecked'],DisabledSlots:17,Invulnerable:1b,ShowArms:1b,Small:1b,Invisible:1b,PersistenceRequired:1b,HandItems:[{},{id:"minecraft:rotten_flesh",count:1b,components:{custom_name:'{"translate":"scrap.lc.corpse","italic":false}',custom_model_data:19,"!minecraft:food":{},custom_data:{Sellable:1b,TwoHanded:1b,HideArms:1b,Corpse:1b,Weight:19,Value:5}}}],ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",count:1b,components:{custom_model_data:12}}]}
execute on origin store result score @s lcmc.player.facing.X run data get entity @s Rotation[0] 10
execute on origin run scoreboard players operation @s lcmc.player.facing.X += 1800 lcmc.math.numbers
execute on origin run scoreboard players operation @s lcmc.player.facing.X += 900 lcmc.math.numbers
execute on origin run scoreboard players operation @s lcmc.player.facing.X -= 1800 lcmc.math.numbers
execute on origin store result entity @n[tag=Corpse,tag=Unchecked] Rotation[0] float .1 run scoreboard players get @s lcmc.player.facing.X
execute on origin store result score @s lcmc.player.facing.X run data get entity @s Rotation[0] 1
tag @n[tag=Corpse,tag=Item,tag=Unchecked,distance=..1] remove Unchecked
kill @s[type=item]