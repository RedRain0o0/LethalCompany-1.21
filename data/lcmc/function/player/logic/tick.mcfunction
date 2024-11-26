## Fall Time
execute store result score @s lcmc.logic.onGroundCurr run data get entity @s OnGround
execute store result score @s lcmc.player.fallVelocity run data get entity @s Motion[1] 1000
execute unless score @s lcmc.logic.onGroundCurr matches 1 if score @s lcmc.player.fallVelocity matches ..-1 run scoreboard players add @s lcmc.player.fallTime 1
$execute store result entity @n[tag=lcmc.player.logic.FallMarker,tag=lcmc.player.Player.$(player)] Pos[0] double 0.01 run data get entity @s Pos[0] 100
$execute store result entity @n[tag=lcmc.player.logic.FallMarker,tag=lcmc.player.Player.$(player)] Pos[2] double 0.01 run data get entity @s Pos[2] 100
#$tp @n[tag=lcmc.player.logic.FallMarker,tag=lcmc.player.Player.$(player)] ~ ~ ~

$execute if score @s lcmc.logic.onGroundCurr matches 1 if score @s lcmc.player.fallTime matches 1.. at @n[tag=lcmc.player.logic.FallMarker,tag=lcmc.player.Player.$(player)] as @s[distance=21.7..24.8] run scoreboard players remove @s lcmc.player.health 30
$execute if score @s lcmc.logic.onGroundCurr matches 1 if score @s lcmc.player.fallTime matches 1.. at @n[tag=lcmc.player.logic.FallMarker,tag=lcmc.player.Player.$(player)] as @s[distance=24.8..27.9] run scoreboard players remove @s lcmc.player.health 50
$execute if score @s lcmc.logic.onGroundCurr matches 1 if score @s lcmc.player.fallTime matches 1.. at @n[tag=lcmc.player.logic.FallMarker,tag=lcmc.player.Player.$(player)] as @s[distance=27.9..29.8] run scoreboard players remove @s lcmc.player.health 80
$execute if score @s lcmc.logic.onGroundCurr matches 1 if score @s lcmc.player.fallTime matches 1.. at @n[tag=lcmc.player.logic.FallMarker,tag=lcmc.player.Player.$(player)] as @s[distance=29.8..] run scoreboard players remove @s lcmc.player.health 100

$execute unless score @s lcmc.player.fallVelocity matches ..-1 store result entity @n[tag=lcmc.player.logic.FallMarker,tag=lcmc.player.Player.$(player)] Pos[1] double 0.01 run data get entity @s Pos[1] 100
$execute if score @s lcmc.logic.onGroundCurr matches 1 store result entity @n[tag=lcmc.player.logic.FallMarker,tag=lcmc.player.Player.$(player)] Pos[1] double 0.01 run data get entity @s Pos[1] 100
execute if score @s lcmc.logic.onGroundCurr matches 1 run scoreboard players set @s lcmc.player.fallTime 0
execute if score @s lcmc.player.fallVelocity matches 0.. run scoreboard players set @s lcmc.player.fallTime 0
$tp @n[tag=lcmc.player.logic.FallMarker,tag=lcmc.player.Player.$(player)] 0 0 0

## Movement
scoreboard players set @s lcmc.player.logic.movingCheck 0
execute if predicate lcmc:player/logic/forward run scoreboard players set @s lcmc.player.logic.movingCheck 1
execute if predicate lcmc:player/logic/backward run scoreboard players set @s lcmc.player.logic.movingCheck 1
execute if predicate lcmc:player/logic/left run scoreboard players set @s lcmc.player.logic.movingCheck 1
execute if predicate lcmc:player/logic/right run scoreboard players set @s lcmc.player.logic.movingCheck 1

execute unless predicate lcmc:player/logic/forward run attribute @s minecraft:movement_speed base set 0.08
execute if predicate lcmc:player/logic/forward run attribute @s minecraft:movement_speed base set 0.1

execute if predicate lcmc:player/logic/sprint if score @s lcmc.player.stamina matches 21.. run attribute @s minecraft:movement_speed modifier add sprint-modifier 0.04 add_value
execute unless predicate lcmc:player/logic/sprint run attribute @s minecraft:movement_speed modifier remove sprint-modifier
execute if score @s lcmc.player.stamina matches 0 run attribute @s minecraft:movement_speed modifier remove sprint-modifier

execute as @s[scores={lcmc.logic.onGroundPrev=1,lcmc.player.logic.jumpTimer=0},predicate=lcmc:player/logic/jump] run scoreboard players set @s lcmc.player.logic.jumpTimer 7
execute as @s[scores={lcmc.player.logic.jumpTimer=3}] at @s run effect give @s minecraft:levitation infinite 20 true
execute as @s[scores={lcmc.player.logic.jumpTimer=1}] at @s run effect clear @s minecraft:levitation
execute as @s[scores={lcmc.player.logic.jumpTimer=1..}] run scoreboard players remove @s lcmc.player.logic.jumpTimer 1
execute if predicate lcmc:player/logic/jump if score @s lcmc.logic.onGroundCurr matches 1 if score @s lcmc.player.stamina matches 11.. run scoreboard players remove @s lcmc.player.stamina 10


execute if predicate lcmc:player/logic/sprint if score @s lcmc.player.logic.movingCheck matches 1 if score @s lcmc.player.stamina matches 1.. run scoreboard players remove @s lcmc.player.stamina 1
execute unless predicate lcmc:player/logic/sprint if score @s lcmc.player.logic.movingCheck matches 0 if score @s lcmc.player.stamina matches ..99 run scoreboard players add @s lcmc.player.stamina 2
execute unless predicate lcmc:player/logic/sprint if score @s lcmc.player.logic.movingCheck matches 1 if score @s lcmc.player.stamina matches ..99 run scoreboard players add @s lcmc.player.stamina 1

execute if score @s lcmc.player.stamina matches 101.. run scoreboard players set @s lcmc.player.stamina 100

## Fear
execute if score @s lcmc.player.fear matches 101.. run scoreboard players set @s lcmc.player.fear 100

execute if score @s lcmc.player.logic.fearDecrease matches ..0 run scoreboard players remove @s lcmc.player.fear 55
execute if score @s lcmc.player.logic.fearDecrease matches ..0 run scoreboard players set @s lcmc.player.logic.fearDecrease 21
scoreboard players remove @s lcmc.player.logic.fearDecrease 1

## Insanity

execute if score playerCount lcmc.game.gameState matches 1 if score @s lcmc.player.logic.insanityIncrease matches ..0 if score @s lcmc.player.location matches 0 run scoreboard players add @s lcmc.player.insanity 125
execute if score playerCount lcmc.game.gameState matches 1 if score @s lcmc.player.logic.insanityIncrease matches ..0 if score @s lcmc.player.location matches 1 run scoreboard players add @s lcmc.player.insanity 500
execute if score playerCount lcmc.game.gameState matches 1 if score @s lcmc.player.logic.insanityIncrease matches ..0 if score @s lcmc.player.location matches 2 run scoreboard players remove @s lcmc.player.insanity 2000

execute if score playerCount lcmc.game.gameState matches 2.. if score @s lcmc.player.logic.insanityIncrease matches ..0 if score @s lcmc.player.location matches 0 run scoreboard players add @s lcmc.player.insanity 200
execute if score playerCount lcmc.game.gameState matches 2.. if score @s lcmc.player.logic.insanityIncrease matches ..0 if score @s lcmc.player.location matches 1 run scoreboard players add @s lcmc.player.insanity 800
execute if score playerCount lcmc.game.gameState matches 2.. if score @s lcmc.player.logic.insanityIncrease matches ..0 if score @s lcmc.player.location matches 2 if score time lcmc.game.time matches ..1720 run scoreboard players add @s lcmc.player.insanity 300
execute if score playerCount lcmc.game.gameState matches 2.. if score @s lcmc.player.logic.insanityIncrease matches ..0 if score @s lcmc.player.location matches 2 if score time lcmc.game.time matches ..1721 run scoreboard players add @s lcmc.player.insanity 500
execute if score playerCount lcmc.game.gameState matches 2.. if score @s lcmc.player.logic.insanityIncrease matches ..0 as @n[tag=lcmc.player.Alive,tag=lcmc.player.Player,distance=..4.3] as @n[tag=lcmc.player.Player] run scoreboard players remove @s lcmc.player.insanity 3000

execute if score @s lcmc.player.insanity matches ..0 run scoreboard players set @s lcmc.player.insanity 0
execute if score @s lcmc.player.insanity matches 50001.. run scoreboard players set @s lcmc.player.insanity 50000

execute if score @s lcmc.player.logic.hallucinationTimer matches ..0 store result score hallucinationChance lcmc.player.logic.disposable run random value 0..44
scoreboard players operation hallucinationChance lcmc.player.logic.disposable *= 1000 lcmc.math.numbers
#execute if score @s lcmc.player.insanity matches 10000.. if score @s lcmc.player.logic.hallucinationTimer matches ..0 if score hallucinationChance lcmc.player.logic.disposable <= @s lcmc.player.insanity run playsound lcmc:player.insanity.hallucination ambient @s
scoreboard players reset hallucinationChance lcmc.player.logic.disposable
execute if score @s lcmc.player.logic.hallucinationTimer matches ..0 run scoreboard players set @s lcmc.player.logic.hallucinationTimer 261
scoreboard players remove @s lcmc.player.logic.hallucinationTimer 1

# Make This Decrease while on a Walkie Talkie
#execute if score playerCount lcmc.game.gameState matches 2.. if score @s lcmc.player.logic.insanityIncrease matches ..0 as @n[tag=lcmc.player.Alive,tag=lcmc.player.Player,distance=..4.3] as @n[tag=lcmc.player.Player] run scoreboard players remove @s lcmc.player.insanity 3000

execute if score @s lcmc.player.logic.insanityIncrease matches ..0 run scoreboard players set @s lcmc.player.logic.insanityIncrease 21
scoreboard players remove @s lcmc.player.logic.insanityIncrease 1


## Inventory

execute if score @s lcmc.player.selectedInventorySlot matches 1 run item replace entity @s enderchest.0 from entity @s weapon.mainhand
execute if score @s lcmc.player.selectedInventorySlot matches 2 run item replace entity @s enderchest.1 from entity @s weapon.mainhand
execute if score @s lcmc.player.selectedInventorySlot matches 3 run item replace entity @s enderchest.2 from entity @s weapon.mainhand
execute if score @s lcmc.player.selectedInventorySlot matches 4 run item replace entity @s enderchest.3 from entity @s weapon.mainhand

execute store result score @s lcmc.player.selectedSlot run data get entity @s SelectedItemSlot

execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{TwoHanded:1b}] run function lcmc:player/logic/inventory/change_slot

execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{HideArms:1b}] run item replace entity @s armor.legs with air
execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{HideArms:1b}] run item replace entity @s armor.chest from entity @s enderchest.26
execute if items entity @s weapon.mainhand minecraft:rotten_flesh[minecraft:custom_data~{CoiledCorpse:1b}] run item replace entity @s armor.legs with chainmail_leggings[custom_name='{"text":"CoiledCorpse","italic":false}',unbreakable={},custom_data={CoiledCorpse:1b}]
execute if items entity @s weapon.mainhand minecraft:rotten_flesh[minecraft:custom_data~{Corpse:1b}] run item replace entity @s armor.legs with chainmail_leggings[custom_name='{"text":"Corpse","italic":false}',unbreakable={},custom_data={Corpse:1b}]
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{HideArms:1b}] run item replace entity @s armor.chest from entity @s enderchest.25

execute as @s[tag=lcmc.player.Player.1] run function lcmc:player/logic/inventory/slot_logic {Player:1}
execute as @s[tag=lcmc.player.Player.2] run function lcmc:player/logic/inventory/slot_logic {Player:2}
execute as @s[tag=lcmc.player.Player.3] run function lcmc:player/logic/inventory/slot_logic {Player:3}
execute as @s[tag=lcmc.player.Player.4] run function lcmc:player/logic/inventory/slot_logic {Player:4}

execute if score @s lcmc.player.selectedInventorySlot matches 1 run title @s actionbar {"text": "baaa","font": "lcmc:inventory","extra": [{"translate":"space.-136","font":"default"},{"nbt":"slot1","storage":"lc:player1","interpret":true,"font":"lcmc:items"},{"nbt":"slot2","storage":"lc:player1","interpret":true,"font":"lcmc:items"},{"nbt":"slot3","storage":"lc:player1","interpret":true,"font":"lcmc:items"},{"nbt":"slot4","storage":"lc:player1","interpret":true,"font":"lcmc:items"}]}
execute if score @s lcmc.player.selectedInventorySlot matches 2 run title @s actionbar {"text": "abaa","font": "lcmc:inventory","extra": [{"translate":"space.-136","font":"default"},{"nbt":"slot1","storage":"lc:player1","interpret":true,"font":"lcmc:items"},{"nbt":"slot2","storage":"lc:player1","interpret":true,"font":"lcmc:items"},{"nbt":"slot3","storage":"lc:player1","interpret":true,"font":"lcmc:items"},{"nbt":"slot4","storage":"lc:player1","interpret":true,"font":"lcmc:items"}]}
execute if score @s lcmc.player.selectedInventorySlot matches 3 run title @s actionbar {"text": "aaba","font": "lcmc:inventory","extra": [{"translate":"space.-136","font":"default"},{"nbt":"slot1","storage":"lc:player1","interpret":true,"font":"lcmc:items"},{"nbt":"slot2","storage":"lc:player1","interpret":true,"font":"lcmc:items"},{"nbt":"slot3","storage":"lc:player1","interpret":true,"font":"lcmc:items"},{"nbt":"slot4","storage":"lc:player1","interpret":true,"font":"lcmc:items"}]}
execute if score @s lcmc.player.selectedInventorySlot matches 4 run title @s actionbar {"text": "aaab","font": "lcmc:inventory","extra": [{"translate":"space.-136","font":"default"},{"nbt":"slot1","storage":"lc:player1","interpret":true,"font":"lcmc:items"},{"nbt":"slot2","storage":"lc:player1","interpret":true,"font":"lcmc:items"},{"nbt":"slot3","storage":"lc:player1","interpret":true,"font":"lcmc:items"},{"nbt":"slot4","storage":"lc:player1","interpret":true,"font":"lcmc:items"}]}

execute unless score @s lcmc.player.scrollCooldown matches 1.. unless score @s lcmc.player.previousSlot = @s lcmc.player.selectedSlot run scoreboard players set @s lcmc.player.scrollCooldown 5
execute if score @s lcmc.player.scrollCooldown matches 1.. run scoreboard players remove @s lcmc.player.scrollCooldown 1

scoreboard players operation @s lcmc.player.previousSlot >< @s lcmc.player.selectedSlot

execute unless score @s lcmc.player.previousSlot = @s lcmc.player.math.currentSlot if score @s lcmc.player.selectedInventorySlot matches 1 run item replace entity @s enderchest.4 from entity @s enderchest.0
execute unless score @s lcmc.player.previousSlot = @s lcmc.player.math.currentSlot if score @s lcmc.player.selectedInventorySlot matches 2 run item replace entity @s enderchest.4 from entity @s enderchest.1
execute unless score @s lcmc.player.previousSlot = @s lcmc.player.math.currentSlot if score @s lcmc.player.selectedInventorySlot matches 3 run item replace entity @s enderchest.4 from entity @s enderchest.2
execute unless score @s lcmc.player.previousSlot = @s lcmc.player.math.currentSlot if score @s lcmc.player.selectedInventorySlot matches 4 run item replace entity @s enderchest.4 from entity @s enderchest.3

# data remove storage lcmc:disposable_player_logic held_item
# data modify storage lcmc:disposable_player_logic held_item set from entity @s SelectedItem
# execute positioned 0 0 0 run item replace entity @n[tag=lcmc.player.inventory.SlotM] container.0 from entity @s enderchest.4
# execute store success score success lcmc.player.logic.disposable positioned 0 0 0 run data modify storage lcmc:disposable_player_logic held_item set from entity @n[tag=lcmc.player.inventory.SlotM] item
# tellraw @a {"score": {"name": "success","objective": "lcmc.player.logic.disposable"}}

function lcmc:player/logic/inventory/store_inv_in_hotbar

## Interacting
execute if score @s lcmc.player.logic.currInteract matches 1.. run function lcmc:player/interact/tick
#title @s actionbar {"score": {"name": "@s","objective": "lcmc.player.logic.currInteract"}, "extra": [{"score": {"name": "@s","objective": "lcmc.player.logic.currInteract"}}]}

## Healing
execute if score @s lcmc.player.healCooldown matches 1.. if score @s lcmc.player.health matches 1..19 run scoreboard players remove @s lcmc.player.healCooldown 1
execute if score @s lcmc.player.health matches 1..19 unless score @s lcmc.player.healCooldown matches 1.. run scoreboard players add @s lcmc.player.health 1
execute if score @s lcmc.player.health matches 1..19 if score @s lcmc.player.healCooldown matches 0 run scoreboard players set @s lcmc.player.healCooldown 20
execute if score @s lcmc.player.health matches 20.. if score @s lcmc.player.healCooldown matches 0 run scoreboard players set @s lcmc.player.healCooldown 20

## Grab Item Tip
tag @s add lcmc.item.player.rayCasting
execute at @s if predicate lcmc:player/look_at_item anchored eyes positioned ^ ^ ^.1 run function lcmc:player/logic/item/distance_raycast
scoreboard players set .hit lcmc.player.logic.raycast 0
scoreboard players set .distance lcmc.player.logic.raycast 0
tag @s remove lcmc.item.player.rayCasting
#title @s title {"text":"Grab : [","extra":[{"keybind":"key.use"},{"text":"]"}]}



tellraw @a[tag=lcmc.player.Debug] "<Server> Succesfully completed `player/logic/tick.mcfunction`"