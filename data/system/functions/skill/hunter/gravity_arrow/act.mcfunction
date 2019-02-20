particle minecraft:witch ~ ~ ~ 0.01 0.01 0.01 0.05 4 force
scoreboard players add @e[type=arrow,nbt={NoGravity:1b}] NoGravityArrow 1
execute if entity @s[scores={NoGravityArrow=70..}] run function system:main/arrow/3.5rule