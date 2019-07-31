execute if entity @s[team=Escape] run tellraw @a [{"text":"[ダイス]","color":"dark_red","bold":true},{"text":" 鬼が15秒間とても押しつぶされそうになった！","color":"aqua","bold":false}]
execute if entity @s[team=Escape] run effect give @a[team=Hunter] minecraft:levitation 15 128
execute if entity @s[team=Hunter] run tellraw @a [{"text":"[ダイス]","color":"dark_red","bold":true},{"text":" 逃走者が15秒間とても押しつぶされそうになった！！","color":"aqua","bold":false}]
execute if entity @s[team=Hunter] run effect give @a[team=Escape] minecraft:levitation 15 128