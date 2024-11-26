#say scan
function lcmc:ship/terminal/sub/reset_program_check
execute store success score success lcmc.logic.disposable run data modify storage lcmc:disposable cmd.totest set value 'sca'
execute if score success lcmc.logic.disposable matches 0 run function lcmc:ship/terminal/programs/scan
