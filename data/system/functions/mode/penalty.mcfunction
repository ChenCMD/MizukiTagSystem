scoreboard players add @s HunterPenalty 1
execute if entity @s[scores={HunterPenalty=600..},team=Hunter] run tellraw @a [{"text":"* ","color":"white"},{"selector":"@s"},{"text":"が復活した！","color":"red"}]
execute if entity @s[scores={HunterPenalty=600..},team=Hunter] run tp @s 1148.0 43.5 668.0
execute if entity @s[scores={HunterPenalty=600..}] run scoreboard players reset @a[scores={HunterPenalty=600..}] HunterPenalty