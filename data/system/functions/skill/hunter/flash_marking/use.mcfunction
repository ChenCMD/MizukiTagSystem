execute if entity @s[team=Hunter,level=0,nbt=!{ActiveEffects:[{Id:27b}]}] run function system:skill/hunter/flash_marking/set
tag @s[team=!Wait] add FlashMRemove
scoreboard players reset @s use_flash_m