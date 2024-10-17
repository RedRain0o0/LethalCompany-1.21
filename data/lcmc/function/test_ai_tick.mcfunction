tellraw @a[tag=lcmc.player.Debug.AI] {"translate": "lcmc.genericDebug.start", "with": [{"selector": "@s"},{"text":"lcmc:test_ai_tick"}]}

kill @e[tag=lcmc.enemy.test.MotionVector]
tag @n[tag=lcmc.building.logic.AINode,distance=...1] add lcmc.ai.logic.Checked
execute rotated as @s positioned 0.0 0.0 0.0 run summon marker ^ ^ ^.1 {Tags:[lcmc.enemy.test.MotionVector]}
tellraw @a {"nbt":"Pos","entity":"@e[tag=lcmc.enemy.test.MotionVector]"}
execute store result entity @s Motion[0] double 1 positioned 0 0 0 run data get entity @n[tag=lcmc.enemy.test.MotionVector] Pos[0]
execute store result entity @s Motion[2] double 1 positioned 0 0 0 run data get entity @n[tag=lcmc.enemy.test.MotionVector] Pos[2]
execute facing entity @n[tag=lcmc.building.logic.AINode,tag=!lcmc.ai.logic.Checked] eyes run tp @s ~ ~ ~ ~ 0

tellraw @a[tag=lcmc.player.Debug.AI] {"translate": "lcmc.genericDebug.complete", "with": [{"selector": "@s"},{"text":"lcmc:test_ai_tick"}]}