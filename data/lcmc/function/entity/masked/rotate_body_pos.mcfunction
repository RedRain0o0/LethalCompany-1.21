$execute as @n[type=item_display,tag=lcmc.entity.masked.CurrentBody] at @s run rotate @s ~$(amntD) ~
#$scoreboard players add bodyYawPos lcmc.logic.disposable $(amnt)
$scoreboard players remove bodyYaw lcmc.logic.disposable $(amnt)
tellraw @a {"score": {"name": "bodyYaw","objective": "lcmc.logic.disposable"}}
tellraw @a {"score": {"name": "bodyYawPos","objective": "lcmc.logic.disposable"}}