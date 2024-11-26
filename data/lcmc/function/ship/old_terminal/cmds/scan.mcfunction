scoreboard players set total remaining.scrap 0
scoreboard players set value remaining.scrap 0
execute as @e[tag=Scrap] run function lc:ship/terminal/cmds/scan_item
data modify entity @e[tag=TerminalDisplayText,limit=1] text set value '{"text":"---------------------------------\\n\\n\\n","color":"green","extra":[{"text":"There are "},{"score":{"name":"total","objective":"remaining.scrap"}},{"text":" objects outside the\\nship, totalling at an approximate\\nvalue of "},{"score":{"name":"value","objective":"remaining.scrap"}},{"text":".\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n"}]}'