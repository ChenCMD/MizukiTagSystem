execute if entity @s[team=Escape,level=0,nbt=!{ActiveEffects:[{Id:27b}]},tag=!TeleportBan] run function system:skill/escape/teleport/set
execute if entity @e[tag=SM,tag=TeleportBan] run tellraw @s [{"text":"[エラー] このスキルは現在使用不可です","color":"red"}]
tag @s add TeleportRemove
scoreboard players reset @s use_teleport