tag @s add lcmc.player.logic.CaughtByMasked
tag @s add lcmc.player.logic.Immobilized
attribute @s movement_speed base set 0
execute facing entity @s feet run rotate @n[type=item_display,tag=lcmc.entity.masked.CurrentBody] ~ 0
execute as @n[type=item_display,tag=lcmc.entity.masked.CurrentBody] run function animated_java:masked/animations/animation_masked_walklegs/stop
execute facing entity @n[type=item_display,tag=lcmc.entity.masked.CurrentHead] eyes at @n[type=item_display,tag=lcmc.entity.masked.CurrentHead] run rotate @s ~180 ~