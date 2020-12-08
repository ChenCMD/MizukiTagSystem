execute if entity @s[team=Hunter,tag=GamePlayer] unless score @s GameCount = @e[tag=SM,limit=1] GameCount run clear @s
execute if entity @s[team=Hunter,tag=GamePlayer] unless score @s GameCount = @e[tag=SM,limit=1] GameCount run effect clear @s
execute if entity @s[team=Hunter,tag=GamePlayer] unless score @s GameCount = @e[tag=SM,limit=1] GameCount run tag @s remove HaveLoD
execute if entity @s[team=Hunter,tag=GamePlayer] unless score @s GameCount = @e[tag=SM,limit=1] GameCount run team join Wait @s
execute if entity @s[team=Hunter,tag=GamePlayer] unless score @s GameCount = @e[tag=SM,limit=1] GameCount run tp @s 9989.5 136.5 9996.5
execute if entity @s[team=Hunter,tag=GamePlayer] unless score @s GameCount = @e[tag=SM,limit=1] GameCount run tellraw @s {"text":"ゲーム中に退出した為、待機場所に戻されました。","color":"red"}
execute if entity @s[team=Hunter,tag=GamePlayer] unless score @s GameCount = @e[tag=SM,limit=1] GameCount run gamemode adventure @s

execute if entity @s[team=!Hunter,tag=GamePlayer] unless score @s GameCount = @e[tag=SM,limit=1] GameCount run clear @s
execute if entity @s[team=!Hunter,tag=GamePlayer] unless score @s GameCount = @e[tag=SM,limit=1] GameCount run effect clear @s
execute if entity @s[team=Hunter,tag=GamePlayer] unless score @s GameCount = @e[tag=SM,limit=1] GameCount run tag @s remove HaveLoD
execute if entity @s[team=!Hunter,tag=GamePlayer] unless score @s GameCount = @e[tag=SM,limit=1] GameCount run scoreboard players set @s[team=Escape] Winstroke 0
execute if entity @s[team=!Hunter,tag=GamePlayer] unless score @s GameCount = @e[tag=SM,limit=1] GameCount run scoreboard players set @a[team=Died] Winstroke 0
execute if entity @s[team=!Hunter,tag=GamePlayer] unless score @s GameCount = @e[tag=SM,limit=1] GameCount run team join Wait @s
execute if entity @s[team=!Hunter,tag=GamePlayer] unless score @s GameCount = @e[tag=SM,limit=1] GameCount run tp @s 9989.5 136.5 9996.5
execute if entity @s[team=!Hunter,tag=GamePlayer] unless score @s GameCount = @e[tag=SM,limit=1] GameCount run tellraw @s {"text":"ゲーム中に退出した為、待機場所に戻されました。","color":"red"}
execute if entity @s[team=!Hunter,tag=GamePlayer] unless score @s GameCount = @e[tag=SM,limit=1] GameCount run gamemode adventure @s
gamemode adventure @s[tag=!OP]
effect give @s minecraft:saturation 999999 0 true
effect give @s minecraft:resistance 999999 4 true
execute unless score @s GameCount = @e[tag=SM,limit=1] GameCount run tag @s remove GamePlayer
tag @s remove Event_Death
scoreboard players reset @s Leave