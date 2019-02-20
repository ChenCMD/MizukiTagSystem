execute if entity @s[team=Escape,level=0,nbt=!{ActiveEffects:[{Id:27b}]}] run function system:skill/escape/hide/set
tag @s add HideRemove
scoreboard players reset @s use_hide