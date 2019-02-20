execute at @s run effect give @a[team=Escape,distance=..20] minecraft:glowing 10
execute at @s run effect give @a[team=Escape,distance=..20] minecraft:unluck 10
effect give @s minecraft:strength 10
execute at @s run particle minecraft:end_rod ~ ~ ~ 4 4 4 0 600 force @a[team=Hunter]
xp add @s 40 levels