execute if entity @e[tag=SM,tag=!HalloweenEvent] run tellraw @s [{"text":"Luck of Diceに成功した！","color":"green"}]
execute if entity @e[tag=SM,tag=HalloweenEvent] run tellraw @s [{"text":"お菓子箱からクッキーが出てきた！","color":"gold"}]
scoreboard players add @s LoDCount 1
execute if entity @e[tag=SM,tag=!HalloweenEvent] run function system:dice/give
execute if entity @e[tag=SM,tag=HalloweenEvent] run tag @s add G.1031
execute if entity @e[tag=SM,tag=HalloweenEvent] run tag @s add ItemGive