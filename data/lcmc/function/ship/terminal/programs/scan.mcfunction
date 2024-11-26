scoreboard players set ranProgram lcmc.ship.terminal 1

say scanned

scoreboard players set scanScrap lcmc.ship.terminal 0
scoreboard players set scanValue lcmc.ship.terminal 0

execute store result score scanScrap lcmc.ship.terminal if entity @e[tag=lcmc.item.type.Scrap,predicate=lcmc:generic/not_in_ship]
function #lcmc:scan_scrap

tellraw @a {"translate":"lcmc.terminal.scanResult","with":[{"score":{"name":"scanScrap","objective":"lcmc.ship.terminal"}},{"score":{"name":"scanValue","objective":"lcmc.ship.terminal"}}]}
data modify entity @n[tag=lcmc.ship.terminal.OutputScreen] transformation.translation[1] set value 1.65f
data modify entity @n[tag=lcmc.ship.terminal.OutputScreen] text set value '{"text":"--------------------------------------------\\n","color":"#00FF00","extra":[{"translate":"lcmc.terminal.scanResult","with":[{"score":{"name":"scanScrap","objective":"lcmc.ship.terminal"}},{"score":{"name":"scanValue","objective":"lcmc.ship.terminal"}}]}]}'
