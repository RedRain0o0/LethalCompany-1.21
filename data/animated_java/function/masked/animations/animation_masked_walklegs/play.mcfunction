# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.masked.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'masked', 'function_path': 'animated_java:masked/animations/animation_masked_walklegs/play'}
tag @s add aj.masked.animation.animation_masked_walklegs.playing
scoreboard players set @s aj.animation_masked_walklegs.frame 0
tag @s add aj.transforms_only
execute at @s run function animated_java:masked/animations/animation_masked_walklegs/zzz/set_frame {frame: 0}
tag @s remove aj.transforms_only