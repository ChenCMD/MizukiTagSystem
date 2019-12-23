tag @e[type=arrow,distance=..5,sort=nearest,limit=1] add GravityArrow
data merge entity @e[type=arrow,distance=..5,sort=nearest,limit=1,tag=GravityArrow] {Color:-1,crit:0b,life:1s}
summon armor_stand ~ ~ ~ {Tags:["GravityMark"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b}
tp @e[tag=GravityMark,limit=1] ~ ~1.5 ~ ~ ~
execute as @e[tag=GravityMark,limit=1] at @s if block ^ ^ ^0.2 #system:targets run function system:skill/hunter/gravity_arrow/loop
kill @e[tag=GravityMark,limit=1]
execute if entity @e[type=arrow,distance=..5,sort=nearest,limit=1,tag=GravityArrow] run give @s arrow{display:{Name:"\"§5魔力\""}}
kill @e[type=arrow,distance=..5,sort=nearest,limit=1,tag=GravityArrow]