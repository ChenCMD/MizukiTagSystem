execute if entity @e[tag=SM,tag=!HideBan] if entity @s[team=Escape,level=0,nbt=!{ActiveEffects:[{Id:27b}]}] run function system:skill/escape/hide/set
execute if entity @e[tag=SM,tag=HideBan] run tellraw @s [{"text":"[エラー] このスキルは現在使用不可です","color":"red"}]
tag @s add HideRemove
scoreboard players reset @s use_hide