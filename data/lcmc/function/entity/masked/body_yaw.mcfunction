scoreboard players operation bodyYaw lcmc.logic.disposable = @n[type=item_display,tag=lcmc.entity.masked.CurrentBody] lcmc.entity.generic.rotation.X
scoreboard players operation bodyYaw lcmc.logic.disposable -= @n[type=item_display,tag=lcmc.entity.masked.CurrentHead] lcmc.entity.generic.rotation.X

execute if score bodyYaw lcmc.logic.disposable matches -450..450 run return fail

execute if score bodyYaw lcmc.logic.disposable matches ..-451 at @n[type=item_display,tag=lcmc.entity.masked.CurrentHead] run rotate @n[type=item_display,tag=lcmc.entity.masked.CurrentBody] ~-45 ~
execute if score bodyYaw lcmc.logic.disposable matches 451.. at @n[type=item_display,tag=lcmc.entity.masked.CurrentHead] run rotate @n[type=item_display,tag=lcmc.entity.masked.CurrentBody] ~45 ~
