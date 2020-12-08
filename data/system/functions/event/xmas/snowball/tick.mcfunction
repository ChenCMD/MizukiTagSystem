execute if entity @s[tag=!SetSnowBall] run summon minecraft:snowball ~ ~ ~ {Tags:["SetSnowBall","UnSetGimmick"],Passengers:[{id:"minecraft:armor_stand",Invulnerable:1b,Small:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,Tags:["GravityCheck","UnLinked"]}]}
execute if entity @s[tag=!SetSnowBall] as @a[team=Escape,scores={UsedSnowBall=1..},distance=..8,sort=nearest,limit=1] run scoreboard players operation @e[type=armor_stand,tag=GravityCheck,tag=UnLinked,distance=..0.2,sort=nearest,limit=1] UserID = @s UserID
execute if entity @s[tag=!SetSnowBall] as @a[team=OP,scores={UsedSnowBall=1..},distance=..8,sort=nearest,limit=1] run scoreboard players operation @e[type=armor_stand,tag=GravityCheck,tag=UnLinked,distance=..0.2,sort=nearest,limit=1] UserID = @s UserID
execute if entity @s[tag=!SetSnowBall] if entity @a[team=Escape,scores={UsedSnowBall=1..},distance=..8,sort=nearest,limit=1] run tag @e[type=armor_stand,tag=GravityCheck,tag=UnLinked,distance=..0.2,sort=nearest,limit=1] add Escape
execute if entity @s[tag=!SetSnowBall] if entity @a[team=OP,scores={UsedSnowBall=1..},distance=..8,sort=nearest,limit=1] run tag @e[type=armor_stand,tag=GravityCheck,tag=UnLinked,distance=..0.2,sort=nearest,limit=1] add OPBall
execute if entity @s[tag=!SetSnowBall] run tag @e[type=armor_stand,tag=GravityCheck,tag=UnLinked,distance=..0.2,sort=nearest,limit=1] remove UnLinked
execute if entity @s[tag=!SetSnowBall] store result entity @e[type=snowball,tag=UnSetGimmick,distance=..0.01,sort=nearest,limit=1] Motion[0] double 0.00001 run data get entity @s Motion[0] 100000
execute if entity @s[tag=!SetSnowBall] store result entity @e[type=snowball,tag=UnSetGimmick,distance=..0.01,sort=nearest,limit=1] Motion[1] double 0.00001 run data get entity @s Motion[1] 100000
execute if entity @s[tag=!SetSnowBall] store result entity @e[type=snowball,tag=UnSetGimmick,distance=..0.01,sort=nearest,limit=1] Motion[2] double 0.00001 run data get entity @s Motion[2] 100000
execute if entity @s[tag=!SetSnowBall] run tag @e[type=snowball,tag=UnSetGimmick,distance=..0.01,sort=nearest,limit=1] remove UnSetGimmick
kill @s[tag=!SetSnowBall]
execute if entity @s[tag=SetSnowBall,tag=!OPBall] run particle dust 0.99 0.99 0.99 0.8 ~ ~0.03 ~ 0.06 0.06 0.06 0.5 4 force @a
execute if entity @s[tag=SetSnowBall,tag=OPBall] run particle firework ~ ~0.03 ~ 0.06 0.06 0.06 0.0 4 force @a
scoreboard players reset @s UsedSnowBall