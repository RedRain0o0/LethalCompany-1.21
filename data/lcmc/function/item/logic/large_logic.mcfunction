execute if predicate lc:scrap/two_handed unless score @s TwoHand matches 1.. run function lc:item/logic/two_handed
execute if predicate lc:hold_air if score @s TwoHand matches 1.. run function lc:item/logic/two_handed_drop
execute unless predicate lc:scrap/two_handed if score @s TwoHand matches 1.. run scoreboard players set @s TwoHand 0
execute unless predicate lc:scrap/two_handed if score @s TwoHand matches 0 run function lc:item/logic/store_scrap