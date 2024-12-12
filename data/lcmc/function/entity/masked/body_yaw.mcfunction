# 45 * 2 = 90
# 90 degrees freedom
scoreboard players operation bodyYaw lcmc.logic.disposable = @n[type=item_display,tag=lcmc.entity.masked.CurrentBody] lcmc.entity.generic.rotation.X
scoreboard players operation bodyYaw lcmc.logic.disposable -= @n[type=item_display,tag=lcmc.entity.masked.CurrentHead] lcmc.entity.generic.rotation.X

#tellraw @a {"score": {"name": "bodyYaw","objective": "lcmc.logic.disposable"}}

execute if score bodyYaw lcmc.logic.disposable matches -450..450 run return fail

execute if score bodyYaw lcmc.logic.disposable matches ..-451 run scoreboard players add bodyYaw lcmc.logic.disposable 450
execute if score bodyYaw lcmc.logic.disposable matches 451.. run scoreboard players remove bodyYaw lcmc.logic.disposable 450

#tellraw @a {"score": {"name": "bodyYaw","objective": "lcmc.logic.disposable"}}

#execute store result score bodyYawPos lcmc.logic.disposable run data get entity @n[type=item_display,tag=lcmc.entity.masked.CurrentBody] Rotation[0] 10

execute if score bodyYaw lcmc.logic.disposable matches 1280.. run function lcmc:entity/masked/rotate_body_pos {amnt: 1280, amntD: 128.0}
execute if score bodyYaw lcmc.logic.disposable matches 640.. run function lcmc:entity/masked/rotate_body_pos {amnt: 640, amntD: 64.0}
execute if score bodyYaw lcmc.logic.disposable matches 320.. run function lcmc:entity/masked/rotate_body_pos {amnt: 320, amntD: 32.0}
execute if score bodyYaw lcmc.logic.disposable matches 160.. run function lcmc:entity/masked/rotate_body_pos {amnt: 160, amntD: 16.0}
execute if score bodyYaw lcmc.logic.disposable matches 80.. run function lcmc:entity/masked/rotate_body_pos {amnt: 80, amntD: 8.0}
execute if score bodyYaw lcmc.logic.disposable matches 40.. run function lcmc:entity/masked/rotate_body_pos {amnt: 40, amntD: 4.0}
execute if score bodyYaw lcmc.logic.disposable matches 20.. run function lcmc:entity/masked/rotate_body_pos {amnt: 20, amntD: 2.0}
execute if score bodyYaw lcmc.logic.disposable matches 10.. run function lcmc:entity/masked/rotate_body_pos {amnt: 10, amntD: 1.0}
execute if score bodyYaw lcmc.logic.disposable matches 8.. run function lcmc:entity/masked/rotate_body_pos {amnt: 8, amntD: 0.8}
execute if score bodyYaw lcmc.logic.disposable matches 4.. run function lcmc:entity/masked/rotate_body_pos {amnt: 4, amntD: 0.4}
execute if score bodyYaw lcmc.logic.disposable matches 2.. run function lcmc:entity/masked/rotate_body_pos {amnt: 2, amntD: 0.2}
execute if score bodyYaw lcmc.logic.disposable matches 1.. run function lcmc:entity/masked/rotate_body_pos {amnt: 1, amntD: 0.1}

execute if score bodyYaw lcmc.logic.disposable matches ..-1280 run function lcmc:entity/masked/rotate_body_neg {amnt: 1280}
execute if score bodyYaw lcmc.logic.disposable matches ..-640 run function lcmc:entity/masked/rotate_body_neg {amnt: 640}
execute if score bodyYaw lcmc.logic.disposable matches ..-320 run function lcmc:entity/masked/rotate_body_neg {amnt: 320}
execute if score bodyYaw lcmc.logic.disposable matches ..-160 run function lcmc:entity/masked/rotate_body_neg {amnt: 160}
execute if score bodyYaw lcmc.logic.disposable matches ..-80 run function lcmc:entity/masked/rotate_body_neg {amnt: 80}
execute if score bodyYaw lcmc.logic.disposable matches ..-40 run function lcmc:entity/masked/rotate_body_neg {amnt: 40}
execute if score bodyYaw lcmc.logic.disposable matches ..-20 run function lcmc:entity/masked/rotate_body_neg {amnt: 20}
execute if score bodyYaw lcmc.logic.disposable matches ..-10 run function lcmc:entity/masked/rotate_body_neg {amnt: 10}
execute if score bodyYaw lcmc.logic.disposable matches ..-8 run function lcmc:entity/masked/rotate_body_neg {amnt: 8}
execute if score bodyYaw lcmc.logic.disposable matches ..-4 run function lcmc:entity/masked/rotate_body_neg {amnt: 4}
execute if score bodyYaw lcmc.logic.disposable matches ..-2 run function lcmc:entity/masked/rotate_body_neg {amnt: 2}
execute if score bodyYaw lcmc.logic.disposable matches ..-1 run function lcmc:entity/masked/rotate_body_neg {amnt: 1}

#execute if score bodyYawPos lcmc.logic.disposable matches 1801.. run scoreboard players remove bodyYawPos lcmc.logic.disposable 3600
#execute if score bodyYawPos lcmc.logic.disposable matches ..-1801 run scoreboard players add bodyYawPos lcmc.logic.disposable 3600

#execute store result entity @n[type=item_display,tag=lcmc.entity.masked.CurrentBody] Rotation[0] float 0.1 run scoreboard players get bodyYawPos lcmc.logic.disposable

#function lcmc:entity/masked/rotate_body

