tellraw @a[tag=Debug] "<Server> Begining `tick.mcfunction`"

# Pre Light Logic
execute at @e[tag=LightSpawn] run setblock ~ ~ ~ air
kill @e[tag=LightSpawn]
tellraw @a[tag=Debug] "<Server> Pre Light Logic in `tick.mcfunction`"

# Fall Sound
execute as @e[tag=Item] run scoreboard players operation @s lcmc.logic.currTick >< @s lcmc.logic.prevTick
execute as @e[tag=Item] store result score @s lcmc.logic.currTick run data get entity @s OnGround
execute as @e[tag=Item] at @s unless score @s lcmc.logic.currTick = @s lcmc.logic.prevTick run function lcmc:item/logic/fall_sound
tellraw @a[tag=Debug] "<Server> Fall Sound in `tick.mcfunction`"

# Item Pickup
execute as @e[type=armor_stand,tag=Item,predicate=lcmc:item/kill_hold] run kill @s
tellraw @a[tag=Debug] "<Server> Item Pickup in `tick.mcfunction`"

# Eyeless Dog Logic
effect clear @a[tag=Player,tag=Alive] darkness
execute as @e[tag=dogListener] run function lcmc:enemy/eyelessdog/anger_managment
execute as @e[tag=dogListener] unless score @s lcmc.eyelessDog.listenerCooldown matches 1.. run function lcmc:enemy/eyelessdog/listener_location
execute as @e[tag=dogListener] if score @s lcmc.eyelessDog.listenerCooldown matches 1.. run scoreboard players remove @s lcmc.eyelessDog.listenerCooldown 1
tellraw @a[tag=Debug] "<Server> Eyeless Dog Logic in `tick.mcfunction`"

# Coilhead Logic
function lcmc:enemy/coilhead/tick

# Item Logic
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{BigBolt:1b}}}}] at @s run function lcmc:item/scrap/drop/big_bolt
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{CoiledCorpse:1b}}}}] at @s run function lcmc:item/scrap/drop/coiled_corpse
execute as @e[tag=Item] unless items entity @s weapon.offhand * run kill @s

# Player Logic
execute as @a[tag=Player,tag=Alive] at @s run function lcmc:player/logic/tick
tellraw @a[tag=Debug] "<Server> Player Logic in `tick.mcfunction`"
execute as @e[tag=CoiledCorpse] if score @s lcmc.player.coilTimer matches 22 run data merge entity @s {ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":24},count:1,id:"minecraft:rotten_flesh"}]}
execute as @e[tag=CoiledCorpse] if score @s lcmc.player.coilTimer matches 20 run data merge entity @s {ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":22},count:1,id:"minecraft:rotten_flesh"}]}
execute as @e[tag=CoiledCorpse] if score @s lcmc.player.coilTimer matches 18 run data merge entity @s {ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":23},count:1,id:"minecraft:rotten_flesh"}]}
execute as @e[tag=CoiledCorpse] if score @s lcmc.player.coilTimer matches 16 run data merge entity @s {ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":24},count:1,id:"minecraft:rotten_flesh"}]}
execute as @e[tag=CoiledCorpse] if score @s lcmc.player.coilTimer matches 14 run data merge entity @s {ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":23},count:1,id:"minecraft:rotten_flesh"}]}
execute as @e[tag=CoiledCorpse] if score @s lcmc.player.coilTimer matches 4 run data merge entity @s {ArmorItems:[{},{},{},{components:{"minecraft:custom_model_data":25},count:1,id:"minecraft:rotten_flesh"}]}
execute as @e[tag=CoiledCorpse,tag=PlayerCorpse] if score @s lcmc.player.coilTimer matches 0 at @s run function lcmc:item/scrap/spawn/coiled_corpse
execute as @e[tag=CoiledCorpse] if score @s lcmc.player.coilTimer matches 1.. run scoreboard players remove @s lcmc.player.coilTimer 1


# Game Logic
execute if score onMoon lcmc.game.gameState matches 1 run function lcmc:building/tick


tellraw @a[tag=Debug] "<Server> Succesfully completed `tick.mcfunction`"