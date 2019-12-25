playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1.2
execute if entity @e[tag=SM,tag=OnlyEventDice] run advancement grant @s only system:give_dice_event
execute if entity @e[tag=SM,tag=OnlyItemDice] run advancement grant @s only system:give_dice_item
execute if entity @e[tag=SM,tag=OnlyHyperDice] run advancement grant @s only system:give_dice_hyper
execute if entity @e[tag=SM,tag=!OnlyEventDice,tag=!OnlyItemDice,tag=!OnlyHyperDice] run function random:generation
execute if entity @e[tag=SM,tag=!OnlyEventDice,tag=!OnlyItemDice,tag=!OnlyHyperDice] run scoreboard players operation $DiceRateSumA Ver += $Dice.purple.rate Ver
execute if entity @e[tag=SM,tag=!OnlyEventDice,tag=!OnlyItemDice,tag=!OnlyHyperDice] run scoreboard players operation $DiceRateSumA Ver += $Dice.green.rate Ver
execute if entity @e[tag=SM,tag=!OnlyEventDice,tag=!OnlyItemDice,tag=!OnlyHyperDice] run scoreboard players operation $DiceRateSumA Ver += $Dice.black.rate Ver
execute if entity @e[tag=SM,tag=!OnlyEventDice,tag=!OnlyItemDice,tag=!OnlyHyperDice] run scoreboard players operation @s Random %= $DiceRateSumA Ver
execute if entity @e[tag=SM,tag=!OnlyEventDice,tag=!OnlyItemDice,tag=!OnlyHyperDice] run scoreboard players add @s Random 1
execute if entity @e[tag=SM,tag=!OnlyEventDice,tag=!OnlyItemDice,tag=!OnlyHyperDice] run scoreboard players operation $DiceRateSumB Ver += $Dice.purple.rate Ver
execute if entity @e[tag=SM,tag=!OnlyEventDice,tag=!OnlyItemDice,tag=!OnlyHyperDice] run scoreboard players operation $DiceRateSumB Ver += $Dice.green.rate Ver
execute if entity @e[tag=SM,tag=!OnlyEventDice,tag=!OnlyItemDice,tag=!OnlyHyperDice] if score @s Random matches 1.. if score @s Random <= $Dice.purple.rate Ver run advancement grant @s only system:give_dice_event
execute if entity @e[tag=SM,tag=!OnlyEventDice,tag=!OnlyItemDice,tag=!OnlyHyperDice] if score @s Random > $Dice.purple.rate Ver if score @s Random <= $DiceRateSumB Ver run advancement grant @s only system:give_dice_item
execute if entity @e[tag=SM,tag=!OnlyEventDice,tag=!OnlyItemDice,tag=!OnlyHyperDice] if score @s Random > $DiceRateSumB Ver if score @s Random <= $DiceRateSumA Ver run advancement grant @s only system:give_dice_hyper
execute if entity @e[tag=SM,tag=!OnlyEventDice,tag=!OnlyItemDice,tag=!OnlyHyperDice] run scoreboard players reset $DiceRateSumA
execute if entity @e[tag=SM,tag=!OnlyEventDice,tag=!OnlyItemDice,tag=!OnlyHyperDice] run scoreboard players reset $DiceRateSumB