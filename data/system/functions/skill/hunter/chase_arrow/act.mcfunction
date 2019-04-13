particle minecraft:happy_villager ~ ~ ~ 0.01 0.01 0.01 0.05 4 force
execute at @a[team=Escape,distance=..5] positioned ~ ~ ~ run tp @s ~ ~2.1 ~
execute at @a[team=Escape,distance=..5] positioned ~ ~ ~ run data merge entity @s {Motion:[0.0,-2.0,0.0]}
execute if entity @a[team=Escape,distance=..5] run tag @s remove Arrow_Chase