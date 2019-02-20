execute if entity @s[team=Hunter,level=0,nbt=!{ActiveEffects:[{Id:27b}]}] run function system:skill/hunter/flash_search/set
tag @s[team=!Wait] add FlashSRemove
scoreboard players reset @s use_flash_s