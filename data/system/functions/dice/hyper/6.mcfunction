<<<<<<< HEAD
execute if entity @s[team=Escape] run tellraw @a [{"text":"[ダイス] ","color":"dark_red","bold":true},{"selector":"@s","bold":false},{"text":"は何かを入手した","color":"aqua","bold":false}]
=======
execute if entity @s[team=Escape] run tellraw @a [{"text":"[ダイス] ","color":"dark_red","bold":true},{"selector":"@s"},{"text":"は何かを入手した","color":"aqua","bold":false}]
>>>>>>> c2ae0ca74badf2fafec09781b1831ce200c8e070
execute if entity @s[team=Escape] run give @s minecraft:potion{display:{Name:"{\"text\":\"鋼鉄のポーション\",\"color\":\"gray\",\"bold\":true,\"italic\":false}",Lore:["§9無敵 (0:20)"]},HideFlags:63,CustomPotionEffects:[{Id:26b,Amplifier:0b,Duration:400,ShowParticles:1b}],CustomPotionColor:8026232} 1
execute if entity @s[team=Hunter] run tellraw @a [{"text":"[ダイス] ","color":"dark_red","bold":true},{"text":"全ての逃走者は体力が半分になった！！","color":"aqua","bold":false}]
execute if entity @s[team=Hunter] run scoreboard players operation @a[team=Escape] Health /= $2 AddTmp