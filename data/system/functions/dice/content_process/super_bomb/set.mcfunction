execute if entity @s[team=Hunter] run summon minecraft:armor_stand ~ ~ ~ {Fire:200,Tags:["Hunter","SuperBomb"],Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:1s}]}}]}
execute if entity @s[team=Escape] run summon minecraft:armor_stand ~ ~ ~ {Fire:200,Tags:["Escape","SuperBomb"],Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:1s}]}}]}
execute at @s run scoreboard players operation @e[sort=nearest,distance=..0.01,tag=SuperBomb,tag=!Link_SuperBomb] UserID = @s UserID
execute at @s run tag @e[sort=nearest,distance=..0.01,tag=SuperBomb,tag=!Link_SuperBomb] add Link_SuperBomb
scoreboard players reset @s use_superbomb