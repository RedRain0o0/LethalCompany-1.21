$scoreboard players reset * $(char)
$data modify storage lcmc:terminal cmd.char set value '$(char)'

$data modify storage lcmc:terminal cmd.curr set from storage lcmc:terminal cmd.cmd$(index)
function lcmc:ship/terminal/type2 with storage lcmc:terminal cmd
data merge entity @n[tag=lcmc.ship.terminal.TypeBar] {text:'{"text":"-----------------------------------\\n","color":"#00ff00","extra": [{"nbt":"cmd.cmd0","storage":"lcmc:terminal"},{"text":" "},{"nbt":"cmd.cmd1","storage":"lcmc:terminal"},{"text":" "},{"nbt":"cmd.cmd2","storage":"lcmc:terminal"},{"text":" "},{"nbt":"cmd.cmd3","storage":"lcmc:terminal"}]}'}
function lcmc:ship/terminal/keyboard
execute at @s run playsound lcmc:ship.terminal.type player @a ~ ~ ~