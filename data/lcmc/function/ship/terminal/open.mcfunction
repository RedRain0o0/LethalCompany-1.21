tag @s add lcmc.ship.terminal.User
data remove entity @n[tag=lcmc.ship.Terminal] interaction
function lcmc:ship/terminal/keyboard
execute at @s run playsound lcmc:ship.terminal.enter player @a ~ ~ ~
data modify entity @n[tag=lcmc.ship.terminal.OutputScreen] text set value '{"text":"--------------------------------------------\\n","color":"#00FF00","extra":[{"text":"> MOONS\\n"},{"translate":"lcmc.terminal.moons"},{"text":"\\n> STORE\\n"},{"translate":"lcmc.terminal.store"}]}'
data modify entity @n[tag=lcmc.ship.terminal.OutputScreen] transformation.translation[1] set value 1.6971f
data modify entity @n[tag=lcmc.ship.terminal.TypeBar] transformation.translation[1] set value 1.325f



tellraw @s {"text":"--------------------------------------------\\n","color":"#00FF00","extra":[{"text":"> MOONS\\n"},{"translate":"lcmc.terminal.moons"},{"text":"\\n> STORE\\n"},{"translate":"lcmc.terminal.store"}]}