# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.masked.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'masked', 'function_path': 'animated_java:masked/animations/animation_masked_walklegs/next_frame'}
execute if score @s aj.animation_masked_walklegs.frame matches 21.. run scoreboard players set @s aj.animation_masked_walklegs.frame 1
execute store result storage aj:temp frame int 1 run scoreboard players get @s aj.animation_masked_walklegs.frame
execute at @s run function animated_java:masked/animations/animation_masked_walklegs/zzz/apply_frame with storage aj:temp
scoreboard players add @s aj.animation_masked_walklegs.frame 1