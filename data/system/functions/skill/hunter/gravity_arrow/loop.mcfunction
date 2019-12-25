tp @s ^ ^ ^0.2
execute as @a[scores={UseBow=1..}] positioned ~ ~-1 ~ at @a[team=Escape,distance=..3] run tp @e[type=arrow,tag=GravityArrow,limit=1] ~ ~2.1 ~
execute as @a[scores={UseBow=1..}] positioned ~ ~-1 ~ if entity @a[team=Escape,distance=..3] run data merge entity @e[type=arrow,tag=GravityArrow,limit=1] {Motion:[0.0,-2.0,0.0]}
execute as @a[scores={UseBow=1..}] positioned ~ ~-1 ~ if entity @a[team=Escape,distance=..3] run tag @e[type=arrow,tag=GravityArrow,limit=1] remove GravityArrow
scoreboard players add @s GravityCount 1
execute if block ~ ~ ~ #system:glasses run playsound minecraft:block.glass.break block @a
execute if block ~ ~ ~ #system:glasses as @a[scores={UseBow=1..}] at @s run playsound minecraft:block.glass.break block @s
execute if score @s GravityCount < $GravityArrowLimit Ver at @s if block ^ ^ ^0.2 #system:targets run function system:skill/hunter/gravity_arrow/loop
particle minecraft:witch ~ ~ ~ 0.01 0.01 0.01 0.05 1 force