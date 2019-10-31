execute if entity @s[team=Escape] run tellraw @a [{"text":"[ダイス] ","color":"dark_red","bold":true},{"selector":"@s","bold":false},{"text":"は何かを入手した","color":"aqua","bold":false}]
execute if entity @s[team=Escape] run tag @s add G.204
execute if entity @s[team=Escape] run function system:skill/branch/give
execute if entity @s[team=Hunter] run tellraw @a [{"text":"[ダイス]","color":"dark_red","bold":true},{"text":" 全ての鬼に攻撃力上昇が50秒付与された！","color":"aqua","bold":false}]
execute if entity @s[team=Hunter] run effect give @a[team=Hunter] minecraft:strength 50