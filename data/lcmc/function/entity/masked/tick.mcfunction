execute on passengers as @s[tag=lcmc.entity.masked.HeadRoot] on passengers as @s[tag=lcmc.entity.masked.Head] run tag @s add lcmc.entity.masked.CurrentHead
execute on passengers as @s[tag=lcmc.entity.masked.BodyRoot] on passengers as @s[tag=lcmc.entity.masked.Body] run tag @s add lcmc.entity.masked.CurrentBody
execute as @e[tag=lcmc.entity.masked.CurrentHead] store result score @s lcmc.entity.generic.rotation.X run data get entity @s Rotation[0] 10
execute as @e[tag=lcmc.entity.masked.CurrentBody] store result score @s lcmc.entity.generic.rotation.X run data get entity @s Rotation[0] 10
function lcmc:entity/masked/body_yaw
tag @n[type=item_display,tag=lcmc.entity.masked.CurrentHead] remove lcmc.entity.masked.CurrentHead
tag @n[type=item_display,tag=lcmc.entity.masked.CurrentBody] remove lcmc.entity.masked.CurrentBody