# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
data modify storage aj:temp args set value {variant:'', animation:'', frame: 0}
$execute store success score #success aj.i run data modify storage aj:temp args set value $(args)
summon minecraft:item_display ~ ~ ~ { Tags:['aj.new','aj.rig_entity','aj.rig_root','aj.masked.root'], teleport_duration: 0, interpolation_duration: 1, Passengers:[{id:"minecraft:marker",Tags:["aj.rig_entity","aj.data","aj.masked.data"],data:{rigHash:"82ae39399b0e998049c32089840d612361df7a5a2b1a769ac13b118b5c61f7c3",locators:{},cameras:{},bones:{data_data:"",bone_body:"",bone_left_arm:"",bone_right_arm:"",bone_left_leg:"",bone_right_leg:""}}},{Tags:["aj.rig_entity","aj.bone","aj.masked.bone","aj.masked.bone.body"],id:"minecraft:item_display",transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f]},interpolation_duration:1,teleport_duration:0,item_display:"head",item:{id:"minecraft:rotten_flesh",components:{"minecraft:item_model":"lcmc:enemy/masked/default/body"},count:1},height:48f,width:48f},{Tags:["aj.rig_entity","aj.bone","aj.masked.bone","aj.masked.bone.left_arm"],id:"minecraft:item_display",transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f]},interpolation_duration:1,teleport_duration:0,item_display:"head",item:{id:"minecraft:rotten_flesh",components:{"minecraft:item_model":"lcmc:enemy/masked/default/left_arm"},count:1},height:48f,width:48f},{Tags:["aj.rig_entity","aj.bone","aj.masked.bone","aj.masked.bone.right_arm"],id:"minecraft:item_display",transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f]},interpolation_duration:1,teleport_duration:0,item_display:"head",item:{id:"minecraft:rotten_flesh",components:{"minecraft:item_model":"lcmc:enemy/masked/default/right_arm"},count:1},height:48f,width:48f},{Tags:["aj.rig_entity","aj.bone","aj.masked.bone","aj.masked.bone.left_leg"],id:"minecraft:item_display",transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f]},interpolation_duration:1,teleport_duration:0,item_display:"head",item:{id:"minecraft:rotten_flesh",components:{"minecraft:item_model":"lcmc:enemy/masked/default/left_leg"},count:1},height:48f,width:48f},{Tags:["aj.rig_entity","aj.bone","aj.masked.bone","aj.masked.bone.right_leg"],id:"minecraft:item_display",transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f]},interpolation_duration:1,teleport_duration:0,item_display:"head",item:{id:"minecraft:rotten_flesh",components:{"minecraft:item_model":"lcmc:enemy/masked/default/right_leg"},count:1},height:48f,width:48f}], }
execute as @e[type=item_display,tag=aj.new,limit=1,distance=..0.01] run function animated_java:masked/zzz/0