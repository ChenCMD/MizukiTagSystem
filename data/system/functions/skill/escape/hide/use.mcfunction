execute if entity @e[tag=SM,tag=!HideBan] if entity @s[team=Escape,nbt=!{ActiveEffects:[{Id:27b}]},level=0] run function system:skill/escape/hide/set
execute if entity @e[tag=SM,tag=HideBan] run tellraw @s [{"text":"[エラー] このスキルは現在使用不可です","color":"red"}]