scoreboard players operation @s lcmc.player.health -= attackDamage lcmc.enemy.coilhead
execute if score @s lcmc.player.health matches 1.. run function lcmc:player/logic/take_damage
execute if score @s lcmc.player.health matches ..0 run function lcmc:enemy/coilhead/kill_player
advancement revoke @s only lcmc:attacked_by_coil