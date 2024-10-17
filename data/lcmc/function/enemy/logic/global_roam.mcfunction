$tag @n[tag=lcmc.building.logic.AINode,distance=..$(SearchRadius)] add lcmc.enemy.$(enemy).ai.$(ID).Checked
#execute rotated as @s positioned 0.0 0.0 0.0 run summon marker ^ ^ ^.1 {Tags:[lcmc.enemy.test.MotionVector]}
#tellraw @a {"nbt":"Pos","entity":"@e[tag=lcmc.enemy.test.MotionVector]"}
$execute facing entity @n[tag=lcmc.building.logic.AINode,tag=!lcmc.enemy.$(enemy).ai.$(ID).Checked] eyes run tp @s ^ ^ ^$(speed) ~ 0