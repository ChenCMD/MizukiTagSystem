execute if entity @s[team=Hunter,level=0,nbt=!{ActiveEffects:[{Id:27b}]}] at @s unless entity @e[distance=..20,tag=PrisonPos] run function system:skill/hunter/territory_totem/set
execute if entity @s[team=Hunter,level=0,nbt=!{ActiveEffects:[{Id:27b}]}] at @s if entity @e[distance=..20,tag=PrisonPos] run tellraw @s [{"text":"[エラー] ","color":"red"},{"text":"牢獄が20m以内に存在するため設置出来ません","color":"red"}]
tag @s[team=!Wait] add TerritoryTRemove
scoreboard players reset @s use_territory_t