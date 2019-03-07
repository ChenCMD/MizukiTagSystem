execute if entity @s[team=Escape,level=0,nbt=!{ActiveEffects:[{Id:27b}]},tag=!SpeedBan] run function system:skill/escape/speed/set
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},tag=SpeedBan] run tellraw @s [{"text":"[エラー] このスキルは現在使用不可です","color":"red"}]
tag @s add SpeedRemove
scoreboard players reset @s use_speed