playsound minecraft:block.note.bell master @s ~ ~ ~ 1 1.2
execute if entity @e[tag=SM,tag=OnlyEventDice] run advancement grant @s only system:give_dice_event
execute if entity @e[tag=SM,tag=OnlyItemDice] run advancement grant @s only system:give_dice_item
execute if entity @e[tag=SM,tag=OnlyHyperDice] run advancement grant @s only system:give_dice_hyper
execute if entity @e[tag=SM,tag=!OnlyEventDice,tag=!OnlyItemDice,tag=!OnlyHyperDice] run function random:generation
execute if entity @e[tag=SM,tag=!OnlyEventDice,tag=!OnlyItemDice,tag=!OnlyHyperDice] run scoreboard players operation @s Random %= $100 Ver
execute if entity @e[tag=SM,tag=!OnlyEventDice,tag=!OnlyItemDice,tag=!OnlyHyperDice] run scoreboard players add @s Random 1
execute if entity @e[tag=SM,tag=!OnlyEventDice,tag=!OnlyItemDice,tag=!OnlyHyperDice] if entity @s[scores={Random=36..100}] run advancement grant @s only system:give_dice_event
execute if entity @e[tag=SM,tag=!OnlyEventDice,tag=!OnlyItemDice,tag=!OnlyHyperDice] if entity @s[scores={Random=11..35}] run advancement grant @s only system:give_dice_item
execute if entity @e[tag=SM,tag=!OnlyEventDice,tag=!OnlyItemDice,tag=!OnlyHyperDice] if entity @s[scores={Random=1..10}] run advancement grant @s only system:give_dice_hyper