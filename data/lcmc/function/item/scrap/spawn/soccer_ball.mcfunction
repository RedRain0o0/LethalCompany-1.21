data merge entity @s {Tags:['lcmc.item.type.Scrap','lcmc.type.Item','lcmc.item.SoccerBall','lcmc.item.logic.Conductive'],DisabledSlots:17,Invulnerable:1b,ShowArms:1b,Small:1b,Invisible:1b,PersistenceRequired:1b,HandItems:[{},{id:"minecraft:netherite_scrap",count:1b,components:{custom_name:'{"text":""}',custom_model_data:11,custom_data:{Sellable:1b,TwoHanded:1b,SoccerBall:1b,Conductive:1b,InventoryIcon:"\\u0001",Weight:19}}}],ArmorItems:[{},{},{},{id:"minecraft:netherite_scrap",count:1b,components:{custom_model_data:11}}]}
execute store result entity @s HandItems[1].components.minecraft:custom_data.Value int 1 run random value 44..72