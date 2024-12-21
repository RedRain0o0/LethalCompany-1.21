scoreboard players operation bodyYaw lcmc.logic.disposable = @s lcmc.entity.generic.rotation.X
scoreboard players operation bodyYaw lcmc.logic.disposable -= @n[type=item_display,tag=lcmc.entity.masked.Current] lcmc.entity.generic.rotation.X

scoreboard players operation bodyYaw lcmc.logic.disposable += 1800 lcmc.math.numbers
scoreboard players operation bodyYaw lcmc.logic.disposable %= 3600 lcmc.math.numbers
scoreboard players operation bodyYaw lcmc.logic.disposable -= 1800 lcmc.math.numbers
tellraw @a {"score": {"name": "bodyYaw", "objective": "lcmc.logic.disposable"}}

execute if score bodyYaw lcmc.logic.disposable matches 0 run return fail

execute if score bodyYaw lcmc.logic.disposable matches ..-20 at @s run rotate @s ~2 0
execute if score bodyYaw lcmc.logic.disposable matches 20.. at @s run rotate @s ~-2 0

execute if score bodyYaw lcmc.logic.disposable matches -30..30 run rotate @s ~ 0

