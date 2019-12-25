execute if entity @s[tag=Hunter] run effect give @a[distance=..5,team=Escape] minecraft:blindness 2 0 true
execute if entity @s[tag=Hunter] run effect give @a[distance=..5,team=Escape] minecraft:slowness 2 1 true
execute if entity @s[tag=Escape] run effect give @a[distance=..5,team=Hunter] minecraft:blindness 2 0 true
execute if entity @s[tag=Escape] run effect give @a[distance=..5,team=Hunter] minecraft:slowness 2 1 true
particle minecraft:dust 0.2 0.2 0.2 4 ~ ~ ~ 1.7 1.7 1.7 1 25