$data merge storage lc:terminal {cmd:{letter:"$(char)"}}
$scoreboard players reset * $(char)
function lc:ship/terminal/add_char with storage lc:terminal cmd
$scoreboard players enable @s $(char)
function lc:ship/terminal/keyboard