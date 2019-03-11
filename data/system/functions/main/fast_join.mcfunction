scoreboard players reset @s
scoreboard players set @s JOIN 10
team join Wait @s
scoreboard players set @s Health 999999
scoreboard players add @e[tag=SM] UserID 1
scoreboard players operation @s UserID = @e[tag=SM] UserID
scoreboard players add @s TotalKill 0
scoreboard players add @s WinStrokeMAX 0
effect give @s minecraft:saturation 999999 0 true
effect give @s minecraft:resistance 999999 4 true