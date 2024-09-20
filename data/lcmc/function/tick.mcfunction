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
scoreboard players set @e[tag=CoilHeadRoot] lcmc.coilhead.isWatched 0
execute as @a[tag=Player,tag=Alive] store result score @s lcmc.player.facing.X run data get entity @s Rotation[0]
execute as @a[tag=Player,tag=Alive] store result score @s lcmc.player.facing.Y run data get entity @s Rotation[1]
execute as @a[tag=Player,tag=Alive] at @s anchored eyes run function lcmc:player/logic/coil_in_fov

# Player Logic
execute as @a[tag=Player,tag=Alive] at @s run function lcmc:player/logic/tick
tellraw @a[tag=Debug] "<Server> Player Logic in `tick.mcfunction`"

tellraw @a[tag=Debug] "<Server> Succesfully completed `tick.mcfunction`"

