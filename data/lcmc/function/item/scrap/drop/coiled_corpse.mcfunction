execute on origin rotated as @s run summon armor_stand ^ ^ ^1 {Tags:['Scrap','Item','CoiledCorpse','TwoHanded','Unchecked'],DisabledSlots:17,Invulnerable:1b,ShowArms:1b,Small:1b,Invisible:1b,PersistenceRequired:1b,HandItems:[{},{id:"minecraft:rotten_flesh",count:1b,components:{custom_name:'{"translate":"scrap.lc.corpse","italic":false}',custom_model_data:29,"!minecraft:food":{},custom_data:{Sellable:1b,TwoHanded:1b,HideArms:1b,CoiledCorpse:1b,Weight:19,Value:5}}}],ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",count:1b,components:{custom_model_data:26}}]}
execute on origin store result score @s lcmc.player.facing.X run data get entity @s Rotation[0] 10
execute on origin run scoreboard players operation @s lcmc.player.facing.X += 1800 lcmc.math.numbers
execute on origin run scoreboard players operation @s lcmc.player.facing.X += 900 lcmc.math.numbers
execute on origin run scoreboard players operation @s lcmc.player.facing.X -= 1800 lcmc.math.numbers
execute on origin store result entity @n[tag=CoiledCorpse,tag=Unchecked] Rotation[0] float .1 run scoreboard players get @s lcmc.player.facing.X
# execute on origin store result score @s lcmc.player.facing.X run data get entity @s Rotation[0] 1
tag @n[tag=CoiledCorpse,tag=Item,tag=Unchecked,distance=..1] remove Unchecked
kill @s[type=item]