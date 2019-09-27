scoreboard players add @s TimeFlash 1
scoreboard players add @s EventRadarCount 1
execute if entity @s[scores={EventRadarCount=10..}] at @s run function system:event/fixed_time_flash/radar/act
scoreboard players reset @s[scores={EventRadarCount=10..}] EventRadarCount