execute if entity @s[tag=GamePlayer] run clear @s
execute if entity @s[tag=GamePlayer] run effect clear @s
execute if entity @s[tag=GamePlayer] run execute if entity @e[tag=SM,nbt={FallDistance:138204.6f}] run scoreboard players set @s[team=Escape] Winstroke 0
execute if entity @s[tag=GamePlayer] run execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={UseRuleSelect=3}] run scoreboard players set @a[team=Died] Winstroke 0
execute if entity @s[tag=GamePlayer] run team join Wait @s
execute if entity @s[tag=GamePlayer] run tp @s 1237.5 201.5 684.5
execute if entity @s[tag=GamePlayer] run execute if entity @e[tag=SM,nbt={FallDistance:138204.6f}] run tellraw @s {"text":"ゲーム中に退出した為、待機場所に戻されました。","color":"red"}
execute if entity @s[tag=GamePlayer] run gamemode adventure @s
gamemode adventure @s[tag=!OP]
effect give @s minecraft:saturation 999999 0 true
effect give @s minecraft:resistance 999999 4 true
tag @s remove GamePlayer
scoreboard players reset @s Leave