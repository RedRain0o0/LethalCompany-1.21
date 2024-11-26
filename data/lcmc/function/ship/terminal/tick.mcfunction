execute store result storage lcmc:terminal cmd.index int 1 run scoreboard players get wordIndex lcmc.ship.terminal
function lcmc:ship/terminal/check_multi with storage lcmc:terminal cmd

execute as @a[tag=lcmc.ship.terminal.User,scores={enter=1..}] run function lcmc:ship/terminal/enter
execute as @a[tag=lcmc.ship.terminal.User,scores={-=1..}] run function lcmc:ship/terminal/space
execute as @a[tag=lcmc.ship.terminal.User,scores={exit=1..}] run function lcmc:ship/terminal/exit