execute on origin rotated as @s run summon armor_stand ^ ^ ^1 {Tags:['Scrap','Item','BigBolt','Unchecked'],DisabledSlots:17,Invulnerable:1b,ShowArms:1b,Small:1b,Invisible:1b,PersistenceRequired:1b,HandItems:[{},{id:"minecraft:netherite_scrap",count:1b,components:{custom_name:'{"translate":"scrap.lc.big_bolt","italic":false}',custom_model_data:1,custom_data:{Sellable:1b,BigBolt:1b,Weight:19}}}],ArmorItems:[{},{},{},{id:"minecraft:netherite_scrap",count:1b,components:{custom_model_data:1}}]}
data modify entity @n[tag=BigBolt,tag=Item,tag=Unchecked,distance=..2] HandItems[1].components.minecraft:custom_data.value set from entity @s Item.components.minecraft:custom_data.value
tag @n[tag=BigBolt,tag=Item,tag=Unchecked,distance=..1] remove Unchecked
kill @s[type=item]