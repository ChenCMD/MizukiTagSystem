execute if entity @s[team=Hunter] run summon minecraft:armor_stand ~ ~ ~ {Fire:200,Tags:["Hunter","SuperBomb"],Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:1s}]}}]}
execute if entity @s[team=Escape] run summon minecraft:armor_stand ~ ~ ~ {Fire:200,Tags:["Escape","SuperBomb"],Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:1s}]}}]}
<<<<<<< HEAD
execute at @s run scoreboard players operation @e[sort=nearest,distance=..0.01,tag=SuperBomb,tag=!Link_SuperBomb] UserID = @s UserID
execute at @s run tag @e[sort=nearest,distance=..0.01,tag=SuperBomb,tag=!Link_SuperBomb] add Link_SuperBomb
=======
execute at @s run scoreboard players operation @e[dx=0.0,dy=-0.5,dz=0.0,tag=SuperBomb,tag=!Link_SuperBomb] UserID = @s UserID
execute at @s run tag @e[dx=0.0,dy=-0.5,dz=0.0,tag=SuperBomb,tag=!Link_SuperBomb] add Link_SuperBomb
>>>>>>> c2ae0ca74badf2fafec09781b1831ce200c8e070
scoreboard players reset @s use_superbomb