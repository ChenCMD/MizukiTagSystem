execute as @a[team=Escape] at @s if block ~ ~-1 ~ minecraft:light_gray_concrete if block ~ ~-3 ~ minecraft:soul_sand run tag @e[tag=SM] remove if_Datugoku
execute as @a[team=Escape] at @s if block ~ ~-2 ~ minecraft:light_gray_concrete if block ~ ~-4 ~ minecraft:soul_sand run tag @e[tag=SM] remove if_Datugoku
execute as @a[team=Escape] at @s if block ~ ~-1 ~ minecraft:light_gray_concrete if block ~ ~-3 ~ minecraft:soul_sand run tag @e[tag=SM] add PrisonFlags
execute as @a[team=Escape] at @s if block ~ ~-2 ~ minecraft:light_gray_concrete if block ~ ~-4 ~ minecraft:soul_sand run tag @e[tag=SM] add PrisonFlags
execute if entity @e[tag=SM,tag=PrisonFlags] run scoreboard players add @e[tag=SM] DatugokuA 1
tag @e[tag=SM] remove PrisonFlags
execute as @a[team=Escape] at @s if block ~ ~-1 ~ minecraft:light_gray_concrete if block ~ ~-3 ~ minecraft:soul_sand run tag @s add DatugokuFlags
execute as @a[team=Escape] at @s if block ~ ~-2 ~ minecraft:light_gray_concrete if block ~ ~-4 ~ minecraft:soul_sand run tag @s add DatugokuFlags