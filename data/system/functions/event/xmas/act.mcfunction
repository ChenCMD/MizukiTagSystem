execute store result score $Reg SnowScore run clear @s snowball{ItemID:1224s} 0
execute unless score $Reg SnowScore matches 2.. run tag @s add SnowCheckPassed
execute if entity @s[tag=SnowCheckPassed] run scoreboard players add @s SnowScore 1
execute if entity @s[tag=SnowCheckPassed] run scoreboard players operation $Reg SnowScore = @s SnowScore
execute if entity @s[tag=SnowCheckPassed] run scoreboard players operation $Reg SnowScore %= $5 Ver
execute if entity @s[tag=SnowCheckPassed] run execute if score $Reg SnowScore matches 0 run playsound block.snow.break block @a[distance=..9] ~ ~ ~ 0.8
execute if entity @s[tag=SnowCheckPassed] run execute if score $Reg SnowScore matches 0 run particle block snow ~ ~0.1 ~ 0.2 0 0.2 1 10 normal @a[distance=..9]
execute if entity @s[tag=SnowCheckPassed] run execute if score @s SnowScore matches 160 run tag @s[team=Escape] add G.1224e
execute if entity @s[tag=SnowCheckPassed] run execute if score @s SnowScore matches 160 run tag @s[team=Hunter] add G.1224h
execute if entity @s[tag=SnowCheckPassed] run execute if score @s SnowScore matches 160 run tag @s add ItemGive
execute if entity @s[tag=SnowCheckPassed] run execute if score @s SnowScore matches 160 run scoreboard players reset @s SnowScore
scoreboard players reset $Reg SnowScore
tag @s remove SnowCheckPassed