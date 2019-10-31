execute if entity @e[tag=SM,tag=!HalloweenEvent] run tellraw @s [{"text":"Luck of Diceに失敗した...","color":"red"}]
execute if entity @e[tag=SM,tag=HalloweenEvent] run tellraw @s [{"text":"お菓子箱を開けるのに失敗した...","color":"red"}]
effect give @s minecraft:unluck 10 0 false