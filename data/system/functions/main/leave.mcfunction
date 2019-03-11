execute if entity @s[tag=GamePlayer,team=Hunter] unless score @s GameCount = @e[tag=SM,nbt={FallDistance:138204.6f},limit=1] GameCount run clear @s
execute if entity @s[tag=GamePlayer,team=Hunter] unless score @s GameCount = @e[tag=SM,nbt={FallDistance:138204.6f},limit=1] GameCount run effect clear @s
execute if entity @s[tag=GamePlayer,team=Hunter] unless score @s GameCount = @e[tag=SM,nbt={FallDistance:138204.6f},limit=1] GameCount run team join Wait @s
execute if entity @s[tag=GamePlayer,team=Hunter] unless score @s GameCount = @e[tag=SM,nbt={FallDistance:138204.6f},limit=1] GameCount run tp @s 1237.5 201.5 684.5
execute if entity @s[tag=GamePlayer,team=Hunter] unless score @s GameCount = @e[tag=SM,nbt={FallDistance:138204.6f},limit=1] GameCount run tellraw @s {"text":"ゲーム中に退出した為、待機場所に戻されました。","color":"red"}
execute if entity @s[tag=GamePlayer,team=Hunter] unless score @s GameCount = @e[tag=SM,nbt={FallDistance:138204.6f},limit=1] GameCount run gamemode adventure @s

execute if entity @s[tag=GamePlayer,team=!Hunter] run clear @s
execute if entity @s[tag=GamePlayer,team=!Hunter] run effect clear @s
execute if entity @s[tag=GamePlayer,team=!Hunter] run scoreboard players set @s[team=Escape] Winstroke 0
execute if entity @s[tag=GamePlayer,team=!Hunter] run scoreboard players set @a[team=Died] Winstroke 0
execute if entity @s[tag=GamePlayer,team=!Hunter] run team join Wait @s
execute if entity @s[tag=GamePlayer,team=!Hunter] run tp @s 1237.5 201.5 684.5
execute if entity @s[tag=GamePlayer,team=!Hunter] run tellraw @s {"text":"ゲーム中に退出した為、待機場所に戻されました。","color":"red"}
execute if entity @s[tag=GamePlayer,team=!Hunter] run gamemode adventure @s
gamemode adventure @s[tag=!OP]
effect give @s minecraft:saturation 999999 0 true
effect give @s minecraft:resistance 999999 4 true
execute unless score @s GameCount = @e[tag=SM,nbt={FallDistance:138204.6f},limit=1] GameCount run tag @s remove GamePlayer
scoreboard players reset @s Leave