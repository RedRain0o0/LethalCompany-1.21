scoreboard players add time lcmc.game.time 1
scoreboard players set timeDelay lcmc.game.time 5
scoreboard players operation timeMinutes1 lcmc.game.time = time lcmc.game.time
scoreboard players operation timeMinutes1 lcmc.game.time %= 100 lcmc.math.numbers
scoreboard players operation timeMinutes1 lcmc.game.time %= 61 lcmc.math.numbers
scoreboard players operation timeMinutes2 lcmc.game.time = timeMinutes1 lcmc.game.time
scoreboard players operation timeMinutes2 lcmc.game.time %= 10 lcmc.math.numbers
execute if score timeMinutes1 lcmc.game.time matches 60.. run scoreboard players add time lcmc.game.time 40

execute if score time lcmc.game.time matches 800..1199 run data modify storage lcmc:time signature set string entity @n[tag=lcmc.logic.signature.AM] item.components."minecraft:custom_data".Signature
execute if score time lcmc.game.time matches 1200..2499 run data modify storage lcmc:time signature set string entity @n[tag=lcmc.logic.signature.PM] item.components."minecraft:custom_data".Signature

execute if score time lcmc.game.time matches 800..999 run scoreboard players set doubleHours lcmc.game.time 0
execute if score time lcmc.game.time matches 1000..1299 run scoreboard players set doubleHours lcmc.game.time 1
execute if score time lcmc.game.time matches 1300..2199 run scoreboard players set doubleHours lcmc.game.time 0
execute if score time lcmc.game.time matches 2200..2499 run scoreboard players set doubleHours lcmc.game.time 1

execute if score time lcmc.game.time matches 800..899 run data modify storage lcmc:time hours set string entity @n[tag=lcmc.logic.hours.8] item.components."minecraft:custom_data".Time
execute if score time lcmc.game.time matches 900..999 run data modify storage lcmc:time hours set string entity @n[tag=lcmc.logic.hours.9] item.components."minecraft:custom_data".Time
execute if score time lcmc.game.time matches 1000..1099 run data modify storage lcmc:time hours set string entity @n[tag=lcmc.logic.hours.10] item.components."minecraft:custom_data".Time
execute if score time lcmc.game.time matches 1100..1199 run data modify storage lcmc:time hours set string entity @n[tag=lcmc.logic.hours.11] item.components."minecraft:custom_data".Time
execute if score time lcmc.game.time matches 1200..1299 run data modify storage lcmc:time hours set string entity @n[tag=lcmc.logic.hours.12] item.components."minecraft:custom_data".Time
execute if score time lcmc.game.time matches 1300..1399 run data modify storage lcmc:time hours set string entity @n[tag=lcmc.logic.hours.1] item.components."minecraft:custom_data".Time
execute if score time lcmc.game.time matches 1400..1499 run data modify storage lcmc:time hours set string entity @n[tag=lcmc.logic.hours.2] item.components."minecraft:custom_data".Time
execute if score time lcmc.game.time matches 1500..1599 run data modify storage lcmc:time hours set string entity @n[tag=lcmc.logic.hours.3] item.components."minecraft:custom_data".Time
execute if score time lcmc.game.time matches 1600..1699 run data modify storage lcmc:time hours set string entity @n[tag=lcmc.logic.hours.4] item.components."minecraft:custom_data".Time
execute if score time lcmc.game.time matches 1700..1799 run data modify storage lcmc:time hours set string entity @n[tag=lcmc.logic.hours.5] item.components."minecraft:custom_data".Time
execute if score time lcmc.game.time matches 1800..1899 run data modify storage lcmc:time hours set string entity @n[tag=lcmc.logic.hours.6] item.components."minecraft:custom_data".Time
execute if score time lcmc.game.time matches 1900..1999 run data modify storage lcmc:time hours set string entity @n[tag=lcmc.logic.hours.7] item.components."minecraft:custom_data".Time
execute if score time lcmc.game.time matches 2000..2099 run data modify storage lcmc:time hours set string entity @n[tag=lcmc.logic.hours.8] item.components."minecraft:custom_data".Time
execute if score time lcmc.game.time matches 2100..2199 run data modify storage lcmc:time hours set string entity @n[tag=lcmc.logic.hours.9] item.components."minecraft:custom_data".Time
execute if score time lcmc.game.time matches 2200..2299 run data modify storage lcmc:time hours set string entity @n[tag=lcmc.logic.hours.10] item.components."minecraft:custom_data".Time
execute if score time lcmc.game.time matches 2300..2399 run data modify storage lcmc:time hours set string entity @n[tag=lcmc.logic.hours.11] item.components."minecraft:custom_data".Time
execute if score time lcmc.game.time matches 2400..2499 run data modify storage lcmc:time hours set string entity @n[tag=lcmc.logic.hours.12] item.components."minecraft:custom_data".Time



execute if score doubleHours lcmc.game.time matches 0 if score timeMinutes1 lcmc.game.time matches 0..9 run data modify storage lcmc:time minutes1 set string entity @n[tag=lcmc.logic.minutes.1.0] item.components."minecraft:custom_data".Time
execute if score doubleHours lcmc.game.time matches 1 if score timeMinutes1 lcmc.game.time matches 0..9 run data modify storage lcmc:time minutes1 set string entity @n[tag=lcmc.logic.minutes.2.0] item.components."minecraft:custom_data".Time

execute if score doubleHours lcmc.game.time matches 0 if score timeMinutes1 lcmc.game.time matches 10..19 run data modify storage lcmc:time minutes1 set string entity @n[tag=lcmc.logic.minutes.1.1] item.components."minecraft:custom_data".Time
execute if score doubleHours lcmc.game.time matches 1 if score timeMinutes1 lcmc.game.time matches 10..19 run data modify storage lcmc:time minutes1 set string entity @n[tag=lcmc.logic.minutes.2.1] item.components."minecraft:custom_data".Time

execute if score doubleHours lcmc.game.time matches 0 if score timeMinutes1 lcmc.game.time matches 20..29 run data modify storage lcmc:time minutes1 set string entity @n[tag=lcmc.logic.minutes.1.2] item.components."minecraft:custom_data".Time
execute if score doubleHours lcmc.game.time matches 1 if score timeMinutes1 lcmc.game.time matches 20..29 run data modify storage lcmc:time minutes1 set string entity @n[tag=lcmc.logic.minutes.2.2] item.components."minecraft:custom_data".Time

execute if score doubleHours lcmc.game.time matches 0 if score timeMinutes1 lcmc.game.time matches 30..39 run data modify storage lcmc:time minutes1 set string entity @n[tag=lcmc.logic.minutes.1.3] item.components."minecraft:custom_data".Time
execute if score doubleHours lcmc.game.time matches 1 if score timeMinutes1 lcmc.game.time matches 30..39 run data modify storage lcmc:time minutes1 set string entity @n[tag=lcmc.logic.minutes.2.3] item.components."minecraft:custom_data".Time

execute if score doubleHours lcmc.game.time matches 0 if score timeMinutes1 lcmc.game.time matches 40..49 run data modify storage lcmc:time minutes1 set string entity @n[tag=lcmc.logic.minutes.1.4] item.components."minecraft:custom_data".Time
execute if score doubleHours lcmc.game.time matches 1 if score timeMinutes1 lcmc.game.time matches 40..49 run data modify storage lcmc:time minutes1 set string entity @n[tag=lcmc.logic.minutes.2.4] item.components."minecraft:custom_data".Time

execute if score doubleHours lcmc.game.time matches 0 if score timeMinutes1 lcmc.game.time matches 50..59 run data modify storage lcmc:time minutes1 set string entity @n[tag=lcmc.logic.minutes.1.5] item.components."minecraft:custom_data".Time
execute if score doubleHours lcmc.game.time matches 1 if score timeMinutes1 lcmc.game.time matches 50..59 run data modify storage lcmc:time minutes1 set string entity @n[tag=lcmc.logic.minutes.2.5] item.components."minecraft:custom_data".Time

execute if score doubleHours lcmc.game.time matches 0 if score timeMinutes1 lcmc.game.time matches 60 run data modify storage lcmc:time minutes1 set string entity @n[tag=lcmc.logic.minutes.1.6] item.components."minecraft:custom_data".Time
execute if score doubleHours lcmc.game.time matches 1 if score timeMinutes1 lcmc.game.time matches 60 run data modify storage lcmc:time minutes1 set string entity @n[tag=lcmc.logic.minutes.2.6] item.components."minecraft:custom_data".Time



execute if score doubleHours lcmc.game.time matches 0 if score timeMinutes2 lcmc.game.time matches 0 run data modify storage lcmc:time minutes2 set string entity @n[tag=lcmc.logic.minutes.2.0] item.components."minecraft:custom_data".Time
execute if score doubleHours lcmc.game.time matches 1 if score timeMinutes2 lcmc.game.time matches 0 run data modify storage lcmc:time minutes2 set string entity @n[tag=lcmc.logic.minutes.3.0] item.components."minecraft:custom_data".Time

execute if score doubleHours lcmc.game.time matches 0 if score timeMinutes2 lcmc.game.time matches 1 run data modify storage lcmc:time minutes2 set string entity @n[tag=lcmc.logic.minutes.2.1] item.components."minecraft:custom_data".Time
execute if score doubleHours lcmc.game.time matches 1 if score timeMinutes2 lcmc.game.time matches 1 run data modify storage lcmc:time minutes2 set string entity @n[tag=lcmc.logic.minutes.3.1] item.components."minecraft:custom_data".Time

execute if score doubleHours lcmc.game.time matches 0 if score timeMinutes2 lcmc.game.time matches 2 run data modify storage lcmc:time minutes2 set string entity @n[tag=lcmc.logic.minutes.2.2] item.components."minecraft:custom_data".Time
execute if score doubleHours lcmc.game.time matches 1 if score timeMinutes2 lcmc.game.time matches 2 run data modify storage lcmc:time minutes2 set string entity @n[tag=lcmc.logic.minutes.3.2] item.components."minecraft:custom_data".Time

execute if score doubleHours lcmc.game.time matches 0 if score timeMinutes2 lcmc.game.time matches 3 run data modify storage lcmc:time minutes2 set string entity @n[tag=lcmc.logic.minutes.2.3] item.components."minecraft:custom_data".Time
execute if score doubleHours lcmc.game.time matches 1 if score timeMinutes2 lcmc.game.time matches 3 run data modify storage lcmc:time minutes2 set string entity @n[tag=lcmc.logic.minutes.3.3] item.components."minecraft:custom_data".Time

execute if score doubleHours lcmc.game.time matches 0 if score timeMinutes2 lcmc.game.time matches 4 run data modify storage lcmc:time minutes2 set string entity @n[tag=lcmc.logic.minutes.2.4] item.components."minecraft:custom_data".Time
execute if score doubleHours lcmc.game.time matches 1 if score timeMinutes2 lcmc.game.time matches 4 run data modify storage lcmc:time minutes2 set string entity @n[tag=lcmc.logic.minutes.3.4] item.components."minecraft:custom_data".Time

execute if score doubleHours lcmc.game.time matches 0 if score timeMinutes2 lcmc.game.time matches 5 run data modify storage lcmc:time minutes2 set string entity @n[tag=lcmc.logic.minutes.2.5] item.components."minecraft:custom_data".Time
execute if score doubleHours lcmc.game.time matches 1 if score timeMinutes2 lcmc.game.time matches 5 run data modify storage lcmc:time minutes2 set string entity @n[tag=lcmc.logic.minutes.3.5] item.components."minecraft:custom_data".Time

execute if score doubleHours lcmc.game.time matches 0 if score timeMinutes2 lcmc.game.time matches 6 run data modify storage lcmc:time minutes2 set string entity @n[tag=lcmc.logic.minutes.2.6] item.components."minecraft:custom_data".Time
execute if score doubleHours lcmc.game.time matches 1 if score timeMinutes2 lcmc.game.time matches 6 run data modify storage lcmc:time minutes2 set string entity @n[tag=lcmc.logic.minutes.3.6] item.components."minecraft:custom_data".Time

execute if score doubleHours lcmc.game.time matches 0 if score timeMinutes2 lcmc.game.time matches 7 run data modify storage lcmc:time minutes2 set string entity @n[tag=lcmc.logic.minutes.2.7] item.components."minecraft:custom_data".Time
execute if score doubleHours lcmc.game.time matches 1 if score timeMinutes2 lcmc.game.time matches 7 run data modify storage lcmc:time minutes2 set string entity @n[tag=lcmc.logic.minutes.3.7] item.components."minecraft:custom_data".Time

execute if score doubleHours lcmc.game.time matches 0 if score timeMinutes2 lcmc.game.time matches 8 run data modify storage lcmc:time minutes2 set string entity @n[tag=lcmc.logic.minutes.2.8] item.components."minecraft:custom_data".Time
execute if score doubleHours lcmc.game.time matches 1 if score timeMinutes2 lcmc.game.time matches 8 run data modify storage lcmc:time minutes2 set string entity @n[tag=lcmc.logic.minutes.3.8] item.components."minecraft:custom_data".Time

execute if score doubleHours lcmc.game.time matches 0 if score timeMinutes2 lcmc.game.time matches 9 run data modify storage lcmc:time minutes2 set string entity @n[tag=lcmc.logic.minutes.2.9] item.components."minecraft:custom_data".Time
execute if score doubleHours lcmc.game.time matches 1 if score timeMinutes2 lcmc.game.time matches 9 run data modify storage lcmc:time minutes2 set string entity @n[tag=lcmc.logic.minutes.3.9] item.components."minecraft:custom_data".Time



bossbar set minecraft:lcmc.game.logic.time name {"text":"a","font":"lc:time","extra":[{"translate":"space.-97","font":"default"},{"nbt":"signature","storage":"lcmc:time","interpret":true,"font":"lcmc:time"},{"translate":"space.-97","font":"default"},{"text":"\u0201","font":"lc:time"},{"translate":"space.-97","font":"default"},{"nbt":"hours","storage":"lcmc:time","interpret":true,"font":"lcmc:time"},{"translate":"space.-97","font":"default"},{"nbt":"minutes1","storage":"lcmc:time","interpret":true,"font":"lcmc:time"},{"translate":"space.-97","font":"default"},{"nbt":"minutes2","storage":"lcmc:time","interpret":true,"font":"lcmc:time"}]}