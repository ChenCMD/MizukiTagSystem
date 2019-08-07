execute if entity @s[team=Escape] run tellraw @a [{"text":"[ダイス]","color":"dark_red","bold":true},{"text":" 全ての鬼は15秒間ジャンプ不可になった！","color":"aqua","bold":false}]
execute if entity @s[team=Escape] run effect give @a[team=Hunter] minecraft:jump_boost 15 200
execute if entity @s[team=Hunter] run tellraw @a [{"text":"[ダイス]","color":"dark_red","bold":true},{"text":" 全ての逃走者は15秒間ジャンプ不可になった！！","color":"aqua","bold":false}]
execute if entity @s[team=Hunter] run effect give @a[team=Escape] minecraft:jump_boost 15 200