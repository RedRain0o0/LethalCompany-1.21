summon armor_stand ^ ^ ^-1.25 {Tags:['Scrap','Item','CoiledCorpse'],DisabledSlots:17,Invulnerable:1b,ShowArms:1b,Small:1b,Invisible:1b,PersistenceRequired:1b,HandItems:[{},{id:"minecraft:rotten_flesh",count:1b,components:{custom_name:'{"translate":"scrap.lc.corpse","italic":false}',custom_model_data:29,"!minecraft:food":{},custom_data:{Sellable:1b,TwoHanded:1b,HideArms:1b,CoiledCorpse:1b,Weight:19,Value:5}}}],ArmorItems:[{},{},{},{id:"minecraft:rotten_flesh",count:1b,components:{custom_model_data:26}}]}
execute store result entity @n[tag=CoiledCorpse,tag=Item] Rotation[0] float 1 run data get entity @s Rotation[0]
kill @s[type=armor_stand]