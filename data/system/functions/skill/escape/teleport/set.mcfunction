#execute at @s run summon armor_stand ~ ~ ~ {Tags:["TP"],NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1}
#execute at @s run scoreboard players operation @e[type=armor_stand,tag=TP,distance=..2,tag=!Link_TP] UserID = @s UserID
#tp @e[type=armor_stand,tag=TP,tag=!Link_TP] @s
#execute at @s run tag @e[tag=TP,distance=..2,tag=!Link_TP] add Link_TP

execute at @s run summon armor_stand ~ ~0.5 ~ {Tags:["FacingTP"],NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1}
execute store result entity @e[tag=FacingTP,limit=1] Rotation[0] float 1 run data get entity @s Rotation[0]
execute as @e[tag=FacingTP,limit=1] at @s run tp @s ~ ~ ~ ~ 0
execute as @e[tag=FacingTP,limit=1] at @s if block ~ ~ ~ #system:teleport if block ^ ^ ^0.2 #system:teleport if block ^ ^1 ^0.2 #system:teleport run function system:skill/escape/teleport/loop
execute as @e[tag=FacingTP,limit=1] at @s if block ~ ~-0.5 ~ #system:teleport run tp @s ~ ~-0.5 ~
execute as @e[tag=FacingTP,limit=1] at @s unless block ~ ~ ~ #system:notp align xz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~
execute at @s run playsound minecraft:entity.enderman.teleport ambient @a ~ ~ ~ 1.2 1
execute store result entity @e[tag=FacingTP,limit=1] Rotation[1] float 1 run data get entity @s Rotation[1]
tp @s @e[tag=FacingTP,limit=1]
execute at @s run playsound minecraft:entity.enderman.teleport ambient @a ~ ~ ~ 1.2 1
kill @e[tag=FacingTP,limit=1]
xp add @s 80 levels