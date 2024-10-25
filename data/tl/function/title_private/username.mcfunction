forceload add 0 0 0 0
setblock 0 0 0 shulker_box{Items:[{id:"player_head",Slot:0b}]}
item modify block 0 0 0 container.0 {function:"fill_player_head","entity":"this"}
data remove storage lcmc:disposable profile
data modify storage lcmc:disposable profile.username set from block 0 0 0 Items[0].components."minecraft:profile".name
setblock 0 0 0 air