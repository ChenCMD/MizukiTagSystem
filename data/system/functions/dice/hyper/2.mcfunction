execute if entity @s[team=Escape] run tellraw @a [{"text":"[ダイス]","color":"dark_red","bold":true},{"text":" 全ての逃走者は30秒間一番近い鬼の方向が分かるようになった！","color":"aqua","bold":false}]
execute if entity @s[team=Escape] run scoreboard players set @a[team=Escape] Radar_Remaining 600
execute if entity @s[team=Hunter] run tellraw @a [{"text":"[ダイス]","color":"dark_red","bold":true},{"text":" 全ての鬼は30秒間一番近い逃走者の方向が分かるようになった！","color":"aqua","bold":false}]
execute if entity @s[team=Hunter] run scoreboard players set @a[team=Hunter] Radar_Remaining 600