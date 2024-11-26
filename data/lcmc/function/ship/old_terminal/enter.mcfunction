scoreboard players reset * enter
scoreboard players enable @s enter

$execute if score .root Terminal matches 1 run function lc:ship/terminal/enter/root {msg:$(msg)}
$execute if score .route Terminal matches 1 run function lc:ship/terminal/enter/route {msg:$(msg)}
$execute if score .buy Terminal matches 1 run function lc:ship/terminal/enter/buy {msg:$(msg)}



$execute unless data storage lc:terminal {cmds:["$(msg)"]} run function lc:ship/terminal/cmds/no_cmd

data modify storage lc:terminal cmd set value {msg:""}
data modify entity @e[tag=TerminalInputText,limit=1] text set value '{"text":"---------------------------------\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n","color":"green","extra":[{"nbt":"cmd.msg","storage":"lc:terminal"}]}'
function lc:ship/terminal/keyboard