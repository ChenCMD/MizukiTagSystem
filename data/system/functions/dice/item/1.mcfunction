execute if entity @s run tellraw @a [{"text":"[ダイス] ","color":"green","bold":true},{"selector":"@s","bold":false},{"text":"は何かを入手した","color":"aqua","bold":false}]
execute if entity @s run tag @s add G.205
execute if entity @s run function system:skill/branch/give