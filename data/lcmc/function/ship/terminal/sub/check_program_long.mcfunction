function lcmc:ship/terminal/sub/reset_program_check
execute store success score success lcmc.logic.disposable run data modify storage lcmc:disposable cmd.totest set value 'transmit'
execute if score success lcmc.logic.disposable matches 0 run data modify storage lcmc:disposable cmd.totest set from storage lcmc:disposable cmd.arg1
execute if score success lcmc.logic.disposable matches 0 store success score success2 lcmc.logic.disposable run data modify storage lcmc:disposable cmd.totest set value ''
execute if score hasSignalTransmitter lcmc.ship.terminal matches 1 if score success lcmc.logic.disposable matches 0 if score success2 lcmc.logic.disposable matches 1 run function lcmc:ship/terminal/programs/transmit