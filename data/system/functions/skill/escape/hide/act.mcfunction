scoreboard players add @s InvisibleArmor 1
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},tag=GameTime_Yes] as @a[scores={InvisibleArmor=120},team=!Wait] run function system:armor/escape
scoreboard players reset @s[scores={InvisibleArmor=120}] InvisibleArmor