execute if entity @s[team=Escape] run tellraw @a [{"text":"[ダイス]","color":"dark_red","bold":true},{"text":" 全ての鬼は20秒間スキル使用不可になった！","color":"aqua","bold":false}]
execute if entity @s[team=Escape] run effect give @a[team=Hunter] unluck 20 0 false
execute if entity @s[team=Hunter] run tellraw @a [{"text":"[ダイス]","color":"dark_red","bold":true},{"text":" 全ての逃走者は20秒間スキル使用不可になった！！","color":"aqua","bold":false}]
execute if entity @s[team=Hunter] run effect give @a[team=Escape] unluck 20 0 false