tag @s add Arrow_Gravity
data merge entity @s {NoGravity:1b,Color:-1,crit:0b,life:1s}
execute store result entity @s Motion[0] double 0.00015 run data get entity @s Motion[0] 10000
execute store result entity @s Motion[1] double 0.00015 run data get entity @s Motion[1] 10000
execute store result entity @s Motion[2] double 0.00015 run data get entity @s Motion[2] 10000