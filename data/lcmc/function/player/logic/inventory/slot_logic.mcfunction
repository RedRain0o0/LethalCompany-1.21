$data modify storage lc:player$(Player) slot1 set value '{"text":"\\uffff"}'
$data modify storage lc:player$(Player) slot2 set value '{"text":"\\uffff"}'
$data modify storage lc:player$(Player) slot3 set value '{"text":"\\uffff"}'
$data modify storage lc:player$(Player) slot4 set value '{"text":"\\uffff"}'

$item replace entity @e[tag=lcmc.player.Player.$(Player),tag=lcmc.player.inventory.InventoryEntity,tag=lcmc.player.inventory.Slot1] container.0 from entity @s enderchest.0
$item replace entity @e[tag=lcmc.player.Player.$(Player),tag=lcmc.player.inventory.InventoryEntity,tag=lcmc.player.inventory.Slot2] container.0 from entity @s enderchest.1
$item replace entity @e[tag=lcmc.player.Player.$(Player),tag=lcmc.player.inventory.InventoryEntity,tag=lcmc.player.inventory.Slot3] container.0 from entity @s enderchest.2
$item replace entity @e[tag=lcmc.player.Player.$(Player),tag=lcmc.player.inventory.InventoryEntity,tag=lcmc.player.inventory.Slot4] container.0 from entity @s enderchest.3

$data modify storage lc:player$(Player) slot1 set string entity @n[tag=lcmc.player.Player.$(Player),tag=lcmc.player.inventory.Slot1] item.components."minecraft:custom_data".InventoryIcon
$data modify storage lc:player$(Player) slot2 set string entity @n[tag=lcmc.player.Player.$(Player),tag=lcmc.player.inventory.Slot2] item.components."minecraft:custom_data".InventoryIcon
$data modify storage lc:player$(Player) slot3 set string entity @n[tag=lcmc.player.Player.$(Player),tag=lcmc.player.inventory.Slot3] item.components."minecraft:custom_data".InventoryIcon
$data modify storage lc:player$(Player) slot4 set string entity @n[tag=lcmc.player.Player.$(Player),tag=lcmc.player.inventory.Slot4] item.components."minecraft:custom_data".InventoryIcon