execute if entity @s[tag=Hunter] run effect give @a[team=Escape,distance=..5] minecraft:blindness 2 0 true
execute if entity @s[tag=Hunter] run effect give @a[team=Escape,distance=..5] minecraft:slowness 2 1 true
execute if entity @s[tag=Escape] run effect give @a[team=Hunter,distance=..5] minecraft:blindness 2 0 true
execute if entity @s[tag=Escape] run effect give @a[team=Hunter,distance=..5] minecraft:slowness 2 1 true
particle minecraft:dust 0.2 0.2 0.2 4 ~ ~ ~ 1.7 1.7 1.7 1 25