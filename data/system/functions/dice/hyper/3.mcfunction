execute if entity @s[team=Escape] run tellraw @a [{"text":"[ダイス] ","color":"dark_red","bold":true},{"selector":"@s"},{"text":"は何かを入手した","color":"aqua","bold":false}]
execute if entity @s[team=Escape] run give @s minecraft:tnt{display:{Name:"{\"text\":\"スーパーボム\",\"italic\":false,\"color\":\"red\"}",Lore:["§a投げてから5秒後に範囲12m以内の相手チームを","§a確殺する爆弾を設置する"]}} 1
execute if entity @s[team=Hunter] run tellraw @a [{"text":"[ダイス]","color":"dark_red","bold":true},{"text":" 全ての鬼に攻撃力上昇が50秒付与された！","color":"aqua","bold":false}]
execute if entity @s[team=Hunter] run effect give @a[team=Hunter] minecraft:strength 50