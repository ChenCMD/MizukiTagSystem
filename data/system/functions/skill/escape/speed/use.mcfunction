execute if entity @s[team=Escape,level=0,nbt=!{ActiveEffects:[{Id:27b}]}] run function system:skill/escape/speed/set
tag @s add SpeedRemove
scoreboard players reset @s use_speed