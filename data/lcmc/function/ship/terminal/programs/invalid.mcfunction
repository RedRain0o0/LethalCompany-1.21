say invalid
execute at @s run playsound lcmc:ship.terminal.typoerror player @a ~ ~ ~
data modify entity @n[tag=lcmc.ship.terminal.OutputScreen] text set value '{"text":"--------------------------------------------\\n","color":"#00FF00","extra":[{"translate":"lcmc.terminal.noObject"}]}'
data modify entity @n[tag=lcmc.ship.terminal.OutputScreen] transformation.translation[1] set value 1.6971f
data modify entity @n[tag=lcmc.ship.terminal.TypeBar] transformation.translation[1] set value 1.64f