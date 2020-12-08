execute if entity @s[tag=Escape] run scoreboard players remove @a[team=Hunter,distance=..1.25] Health 80
execute if entity @s[tag=Escape] run effect give @a[team=Hunter,distance=..1.25] instant_damage 1 0 true
execute if entity @s[tag=Escape] if entity @a[team=Hunter,scores={Health=..0},distance=..1.25] run tag @a[team=Hunter,scores={Health=..0},distance=..1.25] add SnowDeath
execute if entity @s[tag=Escape] if entity @a[tag=SnowDeath] as @a[team=Escape] positioned ~ ~1.1 ~ if score @s UserID = @e[type=armor_stand,tag=GravityCheck,distance=0,limit=1] UserID at @s as @a[tag=SnowDeath] run tellraw @a ["",{"selector":"@p[sort=nearest,distance=..0.01,team=Escape]","color":"green"},{"text":" >> ","color":"green"},{"selector":"@s","color":"green"},{"text":" [石を詰めた雪玉]","color":"gray"}]
execute if entity @s[tag=Escape] if entity @a[tag=SnowDeath] run playsound minecraft:entity.lightning_bolt.thunder player @a ~ ~ ~ 1 0.9 1
execute if entity @s[tag=Escape] if entity @a[tag=SnowDeath] as @a[tag=SnowDeath] run function system:mode/hunter_death
tag @a remove SnowDeath

execute if entity @s[tag=!Escape] run effect give @a[team=Escape,distance=..1.25] slowness 4 1 false
execute if entity @s[tag=!Escape] as @a[team=Escape,distance=..1.25] at @s run particle enchanted_hit ~ ~1 ~ 0.4 0.4 0.4 0.3 50 force
execute if entity @s[tag=!Escape] as @a[team=Escape,distance=..1.25] at @s run playsound minecraft:block.glass.break master @a ~ ~ ~ 1 1.2
execute if entity @s[tag=Escape] run effect give @a[team=Hunter,distance=..1.25] slowness 6 1 false
kill @s