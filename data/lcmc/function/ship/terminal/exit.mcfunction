tag @s remove lcmc.ship.terminal.User
scoreboard players reset * exit
data modify storage lcmc:terminal cmd.cmd0 set value ''
data modify storage lcmc:terminal cmd.cmd1 set value ''
data modify storage lcmc:terminal cmd.cmd2 set value ''
data modify storage lcmc:terminal cmd.cmd3 set value ''
scoreboard players set wordIndex lcmc.ship.terminal 0
data modify storage lcmc:terminal cmd.curr set value ''
data modify storage lcmc:terminal cmd.char set value ''
tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
data merge entity @n[tag=lcmc.ship.terminal.TypeBar] {text:'{"text":"-----------------------------------\\n","color":"#00ff00","extra": [{"nbt":"cmd.cmd0","storage":"lcmc:terminal"},{"text":" "},{"nbt":"cmd.cmd1","storage":"lcmc:terminal"},{"text":" "},{"nbt":"cmd.cmd2","storage":"lcmc:terminal"},{"text":" "},{"nbt":"cmd.cmd3","storage":"lcmc:terminal"}]}'}
execute at @s run playsound lcmc:ship.terminal.exit player @a ~ ~ ~