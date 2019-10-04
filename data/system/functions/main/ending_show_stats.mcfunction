scoreboard players operation #1 kills_in_match > @a[team=Hunter] kills_in_match
execute as @a[team=Hunter] if score @s kills_in_match = #1 kills_in_match run tag @s add Kim1

scoreboard players operation #2 kills_in_match > @a[team=Hunter,scores={kills_in_match=1..},tag=!Kim1] kills_in_match
execute as @a[team=Hunter,scores={kills_in_match=1..},tag=!Kim1] if score @s kills_in_match = #2 kills_in_match run tag @s add Kim2

scoreboard players operation #3 kills_in_match > @a[team=Hunter,scores={kills_in_match=1..},tag=!Kim1,tag=!Kim2] kills_in_match
execute as @a[team=Hunter,scores={kills_in_match=1..},tag=!Kim1,tag=!Kim2] if score @s kills_in_match = #3 kills_in_match run tag @s add Kim3

execute if entity @a[tag=Kim1] run tellraw @a [{"text":"1. ","color":"yellow","bold":true},{"selector":"@a[tag=Kim1]","bold":false},{"text":": ","color":"white","bold":false},{"score":{"name":"#1","objective":"kills_in_match"},"color":"aqua","bold":false},{"text":"kills","color":"aqua","bold":false},{"text":"  (","color":"white","bold":false},{"text":"tot.","color":"aqua","bold":false},{"score":{"objective":"TotalKill","name":"@a[tag=Kim1]"},"color":"yellow","bold":false},{"text":")","color":"white","bold":false}]
execute if entity @a[tag=Kim2] run tellraw @a [{"text":"2. ","color":"gray","bold":true},{"selector":"@a[tag=Kim2]","bold":false},{"text":": ","color":"white","bold":false},{"score":{"name":"#2","objective":"kills_in_match"},"color":"aqua","bold":false},{"text":"kills","color":"aqua","bold":false},{"text":"  (","color":"white","bold":false},{"text":"tot.","color":"aqua","bold":false},{"score":{"objective":"TotalKill","name":"@a[tag=Kim2]"},"color":"yellow","bold":false},{"text":")","color":"white","bold":false}]
execute if entity @a[tag=Kim3] run tellraw @a [{"text":"3. ","color":"gold","bold":true},{"selector":"@a[tag=Kim3]","bold":false},{"text":": ","color":"white","bold":false},{"score":{"name":"#3","objective":"kills_in_match"},"color":"aqua","bold":false},{"text":"kills","color":"aqua","bold":false},{"text":"  (","color":"white","bold":false},{"text":"tot.","color":"aqua","bold":false},{"score":{"objective":"TotalKill","name":"@a[tag=Kim3]"},"color":"yellow","bold":false},{"text":")","color":"white","bold":false}]

scoreboard players reset @a[tag=Kim1] kills_in_match
scoreboard players reset @a[tag=Kim2] kills_in_match
scoreboard players reset @a[tag=Kim3] kills_in_match
tag @a remove Kim1
scoreboard players reset #1 kills_in_match
tag @a remove Kim2
scoreboard players reset #2 kills_in_match
tag @a remove Kim3
scoreboard players reset #3 kills_in_match

execute as @a[team=Escape] run scoreboard players add #PlayerCount AddTmp 1
execute if score #PlayerCount AddTmp matches 1.. run tellraw @a [{"text":"\n[逃げ切りプレイヤー]\n","color":"yellow"},{"selector":"@a[team=Escape]"},{"text":"\n計","color":"yellow"},{"text":": ","color":"white"},{"score":{"objective":"AddTmp","name":"#PlayerCount"},"color":"aqua"},{"text":"人","color":"aqua"}]
scoreboard players reset #PlayerCount AddTmp

#DEBUG
execute if score $DEBUG DEBUG_CODE matches 11 run tellraw @a[tag=DebugView] [{"text":"[DEBUG] ","color":"dark_aqua"},{"text":"system:main/ending_show_stats.mcfunction run stats","color":"dark_aqua"},{"text":": ","color":"white"},{"text":"SUCCESS","color":"green"},{"text":"\n[DEBUG] ","color":"dark_aqua"},{"text":"Run from","color":"dark_aqua"},{"text":": ","color":"white"},{"selector":"@s","color":"light_purple"}]
execute if score $DEBUG DEBUG_CODE matches 11 run scoreboard players reset $DEBUG