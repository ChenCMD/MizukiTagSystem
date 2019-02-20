execute if entity @s[team=Escape,level=0,nbt=!{ActiveEffects:[{Id:27b}]}] run function system:skill/escape/teleport/set
tag @s add TeleportRemove
scoreboard players reset @s use_teleport