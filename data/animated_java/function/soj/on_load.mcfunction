# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
scoreboard objectives add aj.animation_soj_idle.frame dummy
execute as @e[type=item_display,tag=aj.soj.root] unless score @s aj.is_rig_loaded matches 1 at @s run function animated_java:soj/root/on_load