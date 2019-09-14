execute if entity @e[tag=SM,scores={Menu=100}] run scoreboard players set @e[tag=SM] Effect1 0
execute if entity @e[tag=SM,scores={Menu=101}] run scoreboard players set @e[tag=SM] Effect1 1
execute if entity @e[tag=SM,scores={Menu=102}] run scoreboard players set @e[tag=SM] Effect1 2
execute if entity @e[tag=SM,scores={Menu=103}] run scoreboard players set @e[tag=SM] Effect1 3
execute if entity @e[tag=SM,scores={Menu=104}] run scoreboard players set @e[tag=SM] Effect1 4
execute if entity @e[tag=SM,scores={Menu=100}] run tellraw @a [{"text":"[Effect] ","color":"green"},{"text":"移動速度上昇","color":"aqua"},{"text":": ","color":"white"},{"text":"OFF","color":"red"}]
execute if entity @e[tag=SM,scores={Menu=101}] run tellraw @a [{"text":"[Effect] ","color":"green"},{"text":"移動速度上昇","color":"aqua"},{"text":": ","color":"white"},{"text":"Ⅰ","color":"green"}]
execute if entity @e[tag=SM,scores={Menu=102}] run tellraw @a [{"text":"[Effect] ","color":"green"},{"text":"移動速度上昇","color":"aqua"},{"text":": ","color":"white"},{"text":"Ⅱ","color":"green"}]
execute if entity @e[tag=SM,scores={Menu=103}] run tellraw @a [{"text":"[Effect] ","color":"green"},{"text":"移動速度上昇","color":"aqua"},{"text":": ","color":"white"},{"text":"Ⅲ","color":"green"}]
execute if entity @e[tag=SM,scores={Menu=104}] run tellraw @a [{"text":"[Effect] ","color":"green"},{"text":"移動速度上昇","color":"aqua"},{"text":": ","color":"white"},{"text":"Ⅳ","color":"green"}]
execute if entity @e[tag=SM,scores={Menu=110}] run scoreboard players set @e[tag=SM] Effect2 0
execute if entity @e[tag=SM,scores={Menu=111}] run scoreboard players set @e[tag=SM] Effect2 1
execute if entity @e[tag=SM,scores={Menu=112}] run scoreboard players set @e[tag=SM] Effect2 2
execute if entity @e[tag=SM,scores={Menu=113}] run scoreboard players set @e[tag=SM] Effect2 3
execute if entity @e[tag=SM,scores={Menu=114}] run scoreboard players set @e[tag=SM] Effect2 4
execute if entity @e[tag=SM,scores={Menu=110}] run tellraw @a [{"text":"[Effect] ","color":"green"},{"text":"移動速度低下","color":"gray"},{"text":": ","color":"white"},{"text":"OFF","color":"red"}]
execute if entity @e[tag=SM,scores={Menu=111}] run tellraw @a [{"text":"[Effect] ","color":"green"},{"text":"移動速度低下","color":"gray"},{"text":": ","color":"white"},{"text":"Ⅰ","color":"green"}]
execute if entity @e[tag=SM,scores={Menu=112}] run tellraw @a [{"text":"[Effect] ","color":"green"},{"text":"移動速度低下","color":"gray"},{"text":": ","color":"white"},{"text":"Ⅱ","color":"green"}]
execute if entity @e[tag=SM,scores={Menu=113}] run tellraw @a [{"text":"[Effect] ","color":"green"},{"text":"移動速度低下","color":"gray"},{"text":": ","color":"white"},{"text":"Ⅲ","color":"green"}]
execute if entity @e[tag=SM,scores={Menu=114}] run tellraw @a [{"text":"[Effect] ","color":"green"},{"text":"移動速度低下","color":"gray"},{"text":": ","color":"white"},{"text":"Ⅳ","color":"green"}]
execute if entity @e[tag=SM,scores={Menu=120}] run scoreboard players set @e[tag=SM] Effect3 0
execute if entity @e[tag=SM,scores={Menu=121}] run scoreboard players set @e[tag=SM] Effect3 1
execute if entity @e[tag=SM,scores={Menu=122}] run scoreboard players set @e[tag=SM] Effect3 2
execute if entity @e[tag=SM,scores={Menu=123}] run scoreboard players set @e[tag=SM] Effect3 3
execute if entity @e[tag=SM,scores={Menu=124}] run scoreboard players set @e[tag=SM] Effect3 4
execute if entity @e[tag=SM,scores={Menu=120}] run tellraw @a [{"text":"[Effect] ","color":"green"},{"text":"跳躍力上昇","color":"green"},{"text":": ","color":"white"},{"text":"OFF","color":"red"}]
execute if entity @e[tag=SM,scores={Menu=121}] run tellraw @a [{"text":"[Effect] ","color":"green"},{"text":"跳躍力上昇","color":"green"},{"text":": ","color":"white"},{"text":"Ⅰ","color":"green"}]
execute if entity @e[tag=SM,scores={Menu=122}] run tellraw @a [{"text":"[Effect] ","color":"green"},{"text":"跳躍力上昇","color":"green"},{"text":": ","color":"white"},{"text":"Ⅱ","color":"green"}]
execute if entity @e[tag=SM,scores={Menu=123}] run tellraw @a [{"text":"[Effect] ","color":"green"},{"text":"跳躍力上昇","color":"green"},{"text":": ","color":"white"},{"text":"Ⅲ","color":"green"}]
execute if entity @e[tag=SM,scores={Menu=124}] run tellraw @a [{"text":"[Effect] ","color":"green"},{"text":"跳躍力上昇","color":"green"},{"text":": ","color":"white"},{"text":"Ⅳ","color":"green"}]
execute if entity @e[tag=SM,scores={Menu=130}] run scoreboard players set @e[tag=SM] Effect4 0
execute if entity @e[tag=SM,scores={Menu=131}] run scoreboard players set @e[tag=SM] Effect4 1
execute if entity @e[tag=SM,scores={Menu=130}] run tellraw @a [{"text":"[Effect] ","color":"green"},{"text":"発光","color":"yellow"},{"text":": ","color":"white"},{"text":"OFF","color":"red"}]
execute if entity @e[tag=SM,scores={Menu=131}] run tellraw @a [{"text":"[Effect] ","color":"green"},{"text":"発光","color":"yellow"},{"text":": ","color":"white"},{"text":"ON","color":"green"}]
execute if entity @e[tag=SM,scores={Menu=100..131}] run function system:menu/pattern/4

execute if entity @e[tag=SM,scores={Menu=132}] run tag @e[tag=SM] remove NoHealthRegen
execute if entity @e[tag=SM,scores={Menu=132}] run tellraw @a [{"text":"体力の自然回復を無効にしました","color":"red"}]
execute if entity @e[tag=SM,scores={Menu=133}] run tag @e[tag=SM] add NoHealthRegen
execute if entity @e[tag=SM,scores={Menu=133}] run tellraw @a [{"text":"体力の自然回復を有効にしました","color":"green"}]
execute if entity @e[tag=SM,scores={Menu=134}] run tag @e[tag=SM] add NoLoD
execute if entity @e[tag=SM,scores={Menu=134}] run tellraw @a [{"text":"Luck of Diceを無効にしました","color":"red"}]
execute if entity @e[tag=SM,scores={Menu=135}] run tag @e[tag=SM] remove NoLoD
execute if entity @e[tag=SM,scores={Menu=135}] run tellraw @a [{"text":"Luck of Diceを有効にしました","color":"green"}]
execute if entity @e[tag=SM,scores={Menu=132..139}] run function system:menu/pattern/1