$data modify storage lc:terminal cmd set value {msg:$(msg)$(letter)}

data modify entity @e[tag=TerminalInputText,limit=1] text set value '{"text":"---------------------------------\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n","color":"green","extra":[{"nbt":"cmd.msg","storage":"lc:terminal"}]}'