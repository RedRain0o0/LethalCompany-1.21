#function lcmc:enemy/logic/pathfinding/raycast with storage lcmc:disposable
#$execute if score canSee lcmc.logic.disposable matches 1 run tag @n[tag=lcmc.enemy.$(enemy).ai.$(id).Target] add lcmc.enemy.$(enemy).ai.$(id).Path.C
#$execute at @n[tag=lcmc.enemy.$(enemy).ai.$(id).Target] run function lcmc:enemy/logic/pathfinding/summon_cardinals
#tag @n[tag=lcmc.ai.logic.Anchor] add lcmc.ai.logic.Anchor.N
#$execute if score canSee lcmc.logic.disposable matches 0 at @n[tag=lcmc.enemy.$(enemy).ai.$(id).Target] run



# do raycast to target
# if cant see find closest node that has LOS to target and tag as path.1
# if cant see find closest node that has LOS to path.1 and tag as path.2
# if cant see find closest node that has LOS to path.2 and tag as path.3
# if cant see find closest node that has LOS to path.3 and tag as path.4
# if can see tag as path.C and start moving towards