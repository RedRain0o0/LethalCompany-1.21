scoreboard players add time lcmc.game.time 1
scoreboard players set timeDelay lcmc.game.time 5
scoreboard players operation timeMinutes1 lcmc.game.time = time lcmc.game.time
scoreboard players operation timeMinutes1 lcmc.game.time %= 100 lcmc.math.numbers
scoreboard players operation timeMinutes1 lcmc.game.time %= 61 lcmc.math.numbers
scoreboard players operation timeMinutes2 lcmc.game.time = timeMinutes1 lcmc.game.time
scoreboard players operation timeMinutes2 lcmc.game.time %= 10 lcmc.math.numbers
execute if score timeMinutes1 lcmc.game.time matches 60.. run scoreboard players add time lcmc.game.time 40

execute if score time lcmc.game.time matches 800..1199 run data modify storage lcmc:time signature set value '\\u0101'
execute if score time lcmc.game.time matches 1200..2499 run data modify storage lcmc:time signature set value '\\u0102'

execute if score time lcmc.game.time matches 800..999 run scoreboard players set doubleHours lcmc.game.time 0
execute if score time lcmc.game.time matches 1000..1299 run scoreboard players set doubleHours lcmc.game.time 1
execute if score time lcmc.game.time matches 1300..2199 run scoreboard players set doubleHours lcmc.game.time 0
execute if score time lcmc.game.time matches 2200..2499 run scoreboard players set doubleHours lcmc.game.time 1

execute if score time lcmc.game.time matches 800..899 run data modify storage lcmc:time hours set value '\\u0308'
execute if score time lcmc.game.time matches 900..999 run data modify storage lcmc:time hours set value '\\u0309'
execute if score time lcmc.game.time matches 1000..1099 run data modify storage lcmc:time hours set value '\\u0310'
execute if score time lcmc.game.time matches 1100..1199 run data modify storage lcmc:time hours set value '\\u0311'
execute if score time lcmc.game.time matches 1200..1299 run data modify storage lcmc:time hours set value '\\u0312'
execute if score time lcmc.game.time matches 1300..1399 run data modify storage lcmc:time hours set value '\\u0301'
execute if score time lcmc.game.time matches 1400..1499 run data modify storage lcmc:time hours set value '\\u0302'
execute if score time lcmc.game.time matches 1500..1599 run data modify storage lcmc:time hours set value '\\u0303'
execute if score time lcmc.game.time matches 1600..1699 run data modify storage lcmc:time hours set value '\\u0304'
execute if score time lcmc.game.time matches 1700..1799 run data modify storage lcmc:time hours set value '\\u0305'
execute if score time lcmc.game.time matches 1800..1899 run data modify storage lcmc:time hours set value '\\u0306'
execute if score time lcmc.game.time matches 1900..1999 run data modify storage lcmc:time hours set value '\\u0307'
execute if score time lcmc.game.time matches 2000..2099 run data modify storage lcmc:time hours set value '\\u0308'
execute if score time lcmc.game.time matches 2100..2199 run data modify storage lcmc:time hours set value '\\u0309'
execute if score time lcmc.game.time matches 2200..2299 run data modify storage lcmc:time hours set value '\\u0310'
execute if score time lcmc.game.time matches 2300..2399 run data modify storage lcmc:time hours set value '\\u0311'
execute if score time lcmc.game.time matches 2400..2499 run data modify storage lcmc:time hours set value '\\u0312'



execute if score doubleHours lcmc.game.time matches 0 if score timeMinutes1 lcmc.game.time matches 0..9 run data modify storage lcmc:time minutes1 set value '\\u1100'
execute if score doubleHours lcmc.game.time matches 1 if score timeMinutes1 lcmc.game.time matches 0..9 run data modify storage lcmc:time minutes1 set value '\\u1200'

execute if score doubleHours lcmc.game.time matches 0 if score timeMinutes1 lcmc.game.time matches 10..19 run data modify storage lcmc:time minutes1 set value '\\u1101'
execute if score doubleHours lcmc.game.time matches 1 if score timeMinutes1 lcmc.game.time matches 10..19 run data modify storage lcmc:time minutes1 set value '\\u1201'

execute if score doubleHours lcmc.game.time matches 0 if score timeMinutes1 lcmc.game.time matches 20..29 run data modify storage lcmc:time minutes1 set value '\\u1102'
execute if score doubleHours lcmc.game.time matches 1 if score timeMinutes1 lcmc.game.time matches 20..29 run data modify storage lcmc:time minutes1 set value '\\u1202'

execute if score doubleHours lcmc.game.time matches 0 if score timeMinutes1 lcmc.game.time matches 30..39 run data modify storage lcmc:time minutes1 set value '\\u1103'
execute if score doubleHours lcmc.game.time matches 1 if score timeMinutes1 lcmc.game.time matches 30..39 run data modify storage lcmc:time minutes1 set value '\\u1203'

execute if score doubleHours lcmc.game.time matches 0 if score timeMinutes1 lcmc.game.time matches 40..49 run data modify storage lcmc:time minutes1 set value '\\u1104'
execute if score doubleHours lcmc.game.time matches 1 if score timeMinutes1 lcmc.game.time matches 40..49 run data modify storage lcmc:time minutes1 set value '\\u1204'

execute if score doubleHours lcmc.game.time matches 0 if score timeMinutes1 lcmc.game.time matches 50..59 run data modify storage lcmc:time minutes1 set value '\\u1105'
execute if score doubleHours lcmc.game.time matches 1 if score timeMinutes1 lcmc.game.time matches 50..59 run data modify storage lcmc:time minutes1 set value '\\u1205'

execute if score doubleHours lcmc.game.time matches 0 if score timeMinutes1 lcmc.game.time matches 60 run data modify storage lcmc:time minutes1 set value '\\u1106'
execute if score doubleHours lcmc.game.time matches 1 if score timeMinutes1 lcmc.game.time matches 60 run data modify storage lcmc:time minutes1 set value '\\u1206'



execute if score doubleHours lcmc.game.time matches 0 if score timeMinutes2 lcmc.game.time matches 0 run data modify storage lcmc:time minutes2 set value '\\u1200'
execute if score doubleHours lcmc.game.time matches 1 if score timeMinutes2 lcmc.game.time matches 0 run data modify storage lcmc:time minutes2 set value '\\u1300'

execute if score doubleHours lcmc.game.time matches 0 if score timeMinutes2 lcmc.game.time matches 1 run data modify storage lcmc:time minutes2 set value '\\u1201'
execute if score doubleHours lcmc.game.time matches 1 if score timeMinutes2 lcmc.game.time matches 1 run data modify storage lcmc:time minutes2 set value '\\u1301'

execute if score doubleHours lcmc.game.time matches 0 if score timeMinutes2 lcmc.game.time matches 2 run data modify storage lcmc:time minutes2 set value '\\u1202'
execute if score doubleHours lcmc.game.time matches 1 if score timeMinutes2 lcmc.game.time matches 2 run data modify storage lcmc:time minutes2 set value '\\u1302'

execute if score doubleHours lcmc.game.time matches 0 if score timeMinutes2 lcmc.game.time matches 3 run data modify storage lcmc:time minutes2 set value '\\u1203'
execute if score doubleHours lcmc.game.time matches 1 if score timeMinutes2 lcmc.game.time matches 3 run data modify storage lcmc:time minutes2 set value '\\u1303'

execute if score doubleHours lcmc.game.time matches 0 if score timeMinutes2 lcmc.game.time matches 4 run data modify storage lcmc:time minutes2 set value '\\u1204'
execute if score doubleHours lcmc.game.time matches 1 if score timeMinutes2 lcmc.game.time matches 4 run data modify storage lcmc:time minutes2 set value '\\u1304'

execute if score doubleHours lcmc.game.time matches 0 if score timeMinutes2 lcmc.game.time matches 5 run data modify storage lcmc:time minutes2 set value '\\u1205'
execute if score doubleHours lcmc.game.time matches 1 if score timeMinutes2 lcmc.game.time matches 5 run data modify storage lcmc:time minutes2 set value '\\u1305'

execute if score doubleHours lcmc.game.time matches 0 if score timeMinutes2 lcmc.game.time matches 6 run data modify storage lcmc:time minutes2 set value '\\u1206'
execute if score doubleHours lcmc.game.time matches 1 if score timeMinutes2 lcmc.game.time matches 6 run data modify storage lcmc:time minutes2 set value '\\u1306'

execute if score doubleHours lcmc.game.time matches 0 if score timeMinutes2 lcmc.game.time matches 7 run data modify storage lcmc:time minutes2 set value '\\u1207'
execute if score doubleHours lcmc.game.time matches 1 if score timeMinutes2 lcmc.game.time matches 7 run data modify storage lcmc:time minutes2 set value '\\u1307'

execute if score doubleHours lcmc.game.time matches 0 if score timeMinutes2 lcmc.game.time matches 8 run data modify storage lcmc:time minutes2 set value '\\u1208'
execute if score doubleHours lcmc.game.time matches 1 if score timeMinutes2 lcmc.game.time matches 8 run data modify storage lcmc:time minutes2 set value '\\u1308'

execute if score doubleHours lcmc.game.time matches 0 if score timeMinutes2 lcmc.game.time matches 9 run data modify storage lcmc:time minutes2 set value '\\u1209'
execute if score doubleHours lcmc.game.time matches 1 if score timeMinutes2 lcmc.game.time matches 9 run data modify storage lcmc:time minutes2 set value '\\u1309'



bossbar set lcmc:game.logic.time name {"text":"a","font":"lcmc:time","extra":[{"translate":"space.-97","font":"default"},{"nbt":"signature","storage":"lcmc:time","interpret":true,"font":"lcmc:time"},{"translate":"space.-97","font":"default"},{"text":"\u0201","font":"lcmc:time"},{"translate":"space.-97","font":"default"},{"nbt":"hours","storage":"lcmc:time","interpret":true,"font":"lcmc:time"},{"translate":"space.-97","font":"default"},{"nbt":"minutes1","storage":"lcmc:time","interpret":true,"font":"lcmc:time"},{"translate":"space.-97","font":"default"},{"nbt":"minutes2","storage":"lcmc:time","interpret":true,"font":"lcmc:time"}]}