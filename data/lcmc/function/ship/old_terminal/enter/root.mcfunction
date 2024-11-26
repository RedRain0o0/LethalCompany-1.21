execute if data storage lc:terminal {"cmd":{"msg":"help"}} run function lc:ship/terminal/cmds/help
execute if data storage lc:terminal {"cmd":{"msg":"other"}} run function lc:ship/terminal/cmds/other
execute if data storage lc:terminal {"cmd":{"msg":"moons"}} run function lc:ship/terminal/cmds/moons
execute if data storage lc:terminal {"cmd":{"msg":"buy"}} run function lc:ship/terminal/cmds/buy
execute if data storage lc:terminal {"cmd":{"msg":"route"}} run function lc:ship/terminal/cmds/route
execute if data storage lc:terminal {"cmd":{"msg":"scan"}} run function lc:ship/terminal/cmds/scan
#execute if data storage lc:terminal {"cmd":{"msg":""}} run function lc:ship/terminal/cmds/
#execute if data storage lc:terminal {"cmd":{"msg":""}} run function lc:ship/terminal/cmds/
#execute if data storage lc:terminal {"cmd":{"msg":""}} run function lc:ship/terminal/cmds/
#execute if data storage lc:terminal {"cmd":{"msg":""}} run function lc:ship/terminal/cmds/

$execute unless data storage lc:terminal {cmds:["$(msg)"]} run function lc:ship/terminal/cmds/no_cmd