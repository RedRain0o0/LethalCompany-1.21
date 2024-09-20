
execute if predicate lc:item/equipment/flashlight unless score @s helditem.battery matches 0 run function lc:item/equipment/flashlight/check
execute if predicate lc:item/scrap/airhorn run playsound lc:scrap.airhorn.honk player @a ~ ~ ~
execute if predicate lc:item/scrap/bike_horn run playsound lc:scrap.bike_horn.honk player @a ~ ~ ~
#execute if predicate lc:item/scrap/ run 



scoreboard players set @s UseFungi 0
scoreboard players set @s flashlight.checked 0