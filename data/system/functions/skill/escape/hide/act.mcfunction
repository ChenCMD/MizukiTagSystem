scoreboard players remove @s InvisibleArmor 1
execute if entity @e[tag=SM,tag=GameTime_Yes] as @a[scores={InvisibleArmor=0},team=!Wait] run function system:armor/escape
scoreboard players reset @s[scores={InvisibleArmor=0}] InvisibleArmor