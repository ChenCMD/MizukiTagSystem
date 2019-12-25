execute if entity @s[tag=!SetSnowBall] run summon minecraft:snowball ~ ~ ~ {Tags:["SetSnowBall","UnSetGimmick"],Passengers:[{id:"minecraft:armor_stand",Invulnerable:1b,Small:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,Tags:["GravityCheck","UnLinked"]}]}
execute if entity @s[tag=!SetSnowBall] as @a[sort=nearest,scores={UsedSnowBall=1..},limit=1,team=Escape,distance=..8] run scoreboard players operation @e[sort=nearest,limit=1,distance=..0.2,type=armor_stand,tag=GravityCheck,tag=UnLinked] UserID = @s UserID
execute if entity @s[tag=!SetSnowBall] as @a[sort=nearest,scores={UsedSnowBall=1..},limit=1,team=OP,distance=..8] run scoreboard players operation @e[sort=nearest,limit=1,distance=..0.2,type=armor_stand,tag=GravityCheck,tag=UnLinked] UserID = @s UserID
execute if entity @s[tag=!SetSnowBall] if entity @a[sort=nearest,scores={UsedSnowBall=1..},limit=1,team=Escape,distance=..8] run tag @e[sort=nearest,limit=1,distance=..0.2,type=armor_stand,tag=GravityCheck,tag=UnLinked] add Escape
execute if entity @s[tag=!SetSnowBall] if entity @a[sort=nearest,scores={UsedSnowBall=1..},limit=1,team=OP,distance=..8] run tag @e[sort=nearest,limit=1,distance=..0.2,type=armor_stand,tag=GravityCheck,tag=UnLinked] add OPBall
execute if entity @s[tag=!SetSnowBall] run tag @e[sort=nearest,limit=1,distance=..0.2,type=armor_stand,tag=GravityCheck,tag=UnLinked] remove UnLinked
execute if entity @s[tag=!SetSnowBall] store result entity @e[sort=nearest,limit=1,distance=..0.01,type=snowball,tag=UnSetGimmick] Motion[0] double 0.00001 run data get entity @s Motion[0] 100000
execute if entity @s[tag=!SetSnowBall] store result entity @e[sort=nearest,limit=1,distance=..0.01,type=snowball,tag=UnSetGimmick] Motion[1] double 0.00001 run data get entity @s Motion[1] 100000
execute if entity @s[tag=!SetSnowBall] store result entity @e[sort=nearest,limit=1,distance=..0.01,type=snowball,tag=UnSetGimmick] Motion[2] double 0.00001 run data get entity @s Motion[2] 100000
execute if entity @s[tag=!SetSnowBall] run tag @e[sort=nearest,limit=1,distance=..0.01,type=snowball,tag=UnSetGimmick] remove UnSetGimmick
kill @s[tag=!SetSnowBall]
execute if entity @s[tag=SetSnowBall,tag=!OPBall] run particle dust 0.99 0.99 0.99 0.8 ~ ~0.03 ~ 0.06 0.06 0.06 0.5 4 force @a
execute if entity @s[tag=SetSnowBall,tag=OPBall] run particle firework ~ ~0.03 ~ 0.06 0.06 0.06 0.0 4 force @a
scoreboard players reset @s UsedSnowBall