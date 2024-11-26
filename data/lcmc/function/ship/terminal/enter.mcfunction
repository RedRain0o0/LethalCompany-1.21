scoreboard players reset * enter
function lcmc:ship/terminal/keyboard
say enter

data modify storage lcmc:disposable cmd.program set value ''
data modify storage lcmc:disposable cmd.arg1 set value ''
data modify storage lcmc:disposable cmd.arg2 set value ''
data modify storage lcmc:disposable cmd.arg3 set value ''
data modify storage lcmc:disposable cmd.program set string storage lcmc:terminal cmd.cmd0 0 3
scoreboard players set ranProgram lcmc.ship.terminal 0
function #lcmc:programs
execute if score ranProgram lcmc.ship.terminal matches 0 run data modify storage lcmc:disposable cmd.program set from storage lcmc:terminal cmd.cmd0
execute if score ranProgram lcmc.ship.terminal matches 0 run data modify storage lcmc:disposable cmd.arg1 set from storage lcmc:terminal cmd.cmd1
execute if score ranProgram lcmc.ship.terminal matches 0 run data modify storage lcmc:disposable cmd.arg2 set from storage lcmc:terminal cmd.cmd2
execute if score ranProgram lcmc.ship.terminal matches 0 run data modify storage lcmc:disposable cmd.arg3 set from storage lcmc:terminal cmd.cmd3
function #lcmc:programs_long
execute if score ranProgram lcmc.ship.terminal matches 0 run function lcmc:ship/terminal/programs/invalid

data modify storage lcmc:terminal cmd.cmd0 set value ''
data modify storage lcmc:terminal cmd.cmd1 set value ''
data modify storage lcmc:terminal cmd.cmd2 set value ''
data modify storage lcmc:terminal cmd.cmd3 set value ''
scoreboard players set wordIndex lcmc.ship.terminal 0
data modify storage lcmc:terminal cmd.curr set value ''
data modify storage lcmc:terminal cmd.char set value ''
data merge entity @n[tag=lcmc.ship.terminal.TypeBar] {text:'{"text":"-----------------------------------\\n","color":"#00ff00","extra": [{"nbt":"cmd.cmd0","storage":"lcmc:terminal"},{"text":" "},{"nbt":"cmd.cmd1","storage":"lcmc:terminal"},{"text":" "},{"nbt":"cmd.cmd2","storage":"lcmc:terminal"},{"text":" "},{"nbt":"cmd.cmd3","storage":"lcmc:terminal"}]}'}

#execute store result score programAmount lcmc.ship.terminal run data get storage lcmc:terminal programs
#scoreboard players remove programAmount lcmc.ship.terminal 1
#function lcmc:ship/terminal/sub/check_program with storage lcmc:terminal