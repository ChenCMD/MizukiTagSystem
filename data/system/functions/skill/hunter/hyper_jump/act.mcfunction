scoreboard players add @s HighJump 1
effect give @s minecraft:slowness 1 9 true
execute if score @s HighJump matches 1 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 0.5
execute if score @s HighJump matches 1..5 run effect give @s minecraft:jump_boost 1 0 false
execute if score @s HighJump matches 6 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 0.6
execute if score @s HighJump matches 6..10 run effect give @s minecraft:jump_boost 1 1 false
execute if score @s HighJump matches 11 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 0.7
execute if score @s HighJump matches 11..15 run effect give @s minecraft:jump_boost 1 2 false
execute if score @s HighJump matches 16 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 0.8
execute if score @s HighJump matches 16..20 run effect give @s minecraft:jump_boost 1 3 false
execute if score @s HighJump matches 21 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 0.9
execute if score @s HighJump matches 21..25 run effect give @s minecraft:jump_boost 1 4 false
execute if score @s HighJump matches 26 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1.0
execute if score @s HighJump matches 26..30 run effect give @s minecraft:jump_boost 1 5 false
execute if score @s HighJump matches 31 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1.1
execute if score @s HighJump matches 31..35 run effect give @s minecraft:jump_boost 1 6 false
execute if score @s HighJump matches 36 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1.2
execute if score @s HighJump matches 36..40 run effect give @s minecraft:jump_boost 1 7 false
execute if score @s HighJump matches 41 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1.3
execute if score @s HighJump matches 41..45 run effect give @s minecraft:jump_boost 1 8 false
execute if score @s HighJump matches 46 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1.4
execute if entity @e[tag=SM,tag=!HalloweenEvent] if score @s HighJump matches 46.. run effect give @s minecraft:jump_boost 1 9 false
execute if entity @e[tag=SM,tag=!alloweenEvent] if score @s HighJump matches 46..55 run effect give @s minecraft:jump_boost 1 9 false
execute if entity @e[tag=SM,tag=HalloweenEvent] if score @s HighJump matches 56 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1.5
execute if entity @e[tag=SM,tag=HalloweenEvent] if score @s HighJump matches 56..65 run effect give @s minecraft:jump_boost 1 10 false
execute if entity @e[tag=SM,tag=HalloweenEvent] if score @s HighJump matches 66 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1.5
execute if entity @e[tag=SM,tag=HalloweenEvent] if score @s HighJump matches 66..75 run effect give @s minecraft:jump_boost 1 11 false
execute if entity @e[tag=SM,tag=HalloweenEvent] if score @s HighJump matches 76 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1.5
execute if entity @e[tag=SM,tag=HalloweenEvent] if score @s HighJump matches 76..85 run effect give @s minecraft:jump_boost 1 12 false
execute if entity @e[tag=SM,tag=HalloweenEvent] if score @s HighJump matches 86 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1.5
execute if entity @e[tag=SM,tag=HalloweenEvent] if score @s HighJump matches 86..95 run effect give @s minecraft:jump_boost 1 13 false
execute if entity @e[tag=SM,tag=HalloweenEvent] if score @s HighJump matches 96 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1.5
execute if entity @e[tag=SM,tag=HalloweenEvent] if score @s HighJump matches 96.. run effect give @s minecraft:jump_boost 1 14 false


execute if score @s HighJump matches 1..5 run title @s actionbar [{"text":"|","color":"gray","bold":false},{"score":{"name":"@s","objective":"Health"},"color":"light_purple","bold":true},{"text":"| - ","color":"gray","bold":false},{"text":"|","color":"aqua","bold":true},{"text":"|||||||||","color":"gray","bold":true}]
execute if score @s HighJump matches 6..10 run title @s actionbar [{"text":"|","color":"gray","bold":false},{"score":{"name":"@s","objective":"Health"},"color":"light_purple","bold":true},{"text":"| - ","color":"gray","bold":false},{"text":"||","color":"aqua","bold":true},{"text":"||||||||","color":"gray","bold":true}]
execute if score @s HighJump matches 11..15 run title @s actionbar [{"text":"|","color":"gray","bold":false},{"score":{"name":"@s","objective":"Health"},"color":"light_purple","bold":true},{"text":"| - ","color":"gray","bold":false},{"text":"|||","color":"aqua","bold":true},{"text":"|||||||","color":"gray","bold":true}]
execute if score @s HighJump matches 16..20 run title @s actionbar [{"text":"|","color":"gray","bold":false},{"score":{"name":"@s","objective":"Health"},"color":"light_purple","bold":true},{"text":"| - ","color":"gray","bold":false},{"text":"||||","color":"aqua","bold":true},{"text":"||||||","color":"gray","bold":true}]
execute if score @s HighJump matches 21..25 run title @s actionbar [{"text":"|","color":"gray","bold":false},{"score":{"name":"@s","objective":"Health"},"color":"light_purple","bold":true},{"text":"| - ","color":"gray","bold":false},{"text":"|||||","color":"aqua","bold":true},{"text":"|||||","color":"gray","bold":true}]
execute if score @s HighJump matches 26..30 run title @s actionbar [{"text":"|","color":"gray","bold":false},{"score":{"name":"@s","objective":"Health"},"color":"light_purple","bold":true},{"text":"| - ","color":"gray","bold":false},{"text":"||||||","color":"aqua","bold":true},{"text":"||||","color":"gray","bold":true}]
execute if score @s HighJump matches 31..35 run title @s actionbar [{"text":"|","color":"gray","bold":false},{"score":{"name":"@s","objective":"Health"},"color":"light_purple","bold":true},{"text":"| - ","color":"gray","bold":false},{"text":"|||||||","color":"aqua","bold":true},{"text":"|||","color":"gray","bold":true}]
execute if score @s HighJump matches 36..40 run title @s actionbar [{"text":"|","color":"gray","bold":false},{"score":{"name":"@s","objective":"Health"},"color":"light_purple","bold":true},{"text":"| - ","color":"gray","bold":false},{"text":"||||||||","color":"aqua","bold":true},{"text":"||","color":"gray","bold":true}]
execute if score @s HighJump matches 41..45 run title @s actionbar [{"text":"|","color":"gray","bold":false},{"score":{"name":"@s","objective":"Health"},"color":"light_purple","bold":true},{"text":"| - ","color":"gray","bold":false},{"text":"|||||||||","color":"aqua","bold":true},{"text":"|","color":"gray","bold":true}]
execute if entity @e[tag=SM,tag=!HalloweenEvent] if score @s HighJump matches 46.. run title @s actionbar [{"text":"|","color":"gray","bold":false},{"score":{"name":"@s","objective":"Health"},"color":"light_purple","bold":true},{"text":"| - ","color":"gray","bold":false},{"text":"||||||||||","color":"aqua","bold":true}]
#ex
execute if entity @e[tag=SM,tag=HalloweenEvent] if score @s HighJump matches 46..55 run title @s actionbar [{"text":"|","color":"gray","bold":false},{"score":{"name":"@s","objective":"Health"},"color":"light_purple","bold":true},{"text":"| - ","color":"gray","bold":false},{"text":"||||||||||","color":"aqua","bold":true}]
execute if entity @e[tag=SM,tag=HalloweenEvent] if score @s HighJump matches 56..65 run title @s actionbar [{"text":"|","color":"gray","bold":false},{"score":{"name":"@s","objective":"Health"},"color":"light_purple","bold":true},{"text":"| - ","color":"gray","bold":false},{"text":"||","color":"yellow","bold":true},{"text":"||||||||","color":"aqua","bold":true}]
execute if entity @e[tag=SM,tag=HalloweenEvent] if score @s HighJump matches 66..75 run title @s actionbar [{"text":"|","color":"gray","bold":false},{"score":{"name":"@s","objective":"Health"},"color":"light_purple","bold":true},{"text":"| - ","color":"gray","bold":false},{"text":"||||","color":"yellow","bold":true},{"text":"||||||","color":"aqua","bold":true}]
execute if entity @e[tag=SM,tag=HalloweenEvent] if score @s HighJump matches 76..85 run title @s actionbar [{"text":"|","color":"gray","bold":false},{"score":{"name":"@s","objective":"Health"},"color":"light_purple","bold":true},{"text":"| - ","color":"gray","bold":false},{"text":"||||||","color":"yellow","bold":true},{"text":"||||","color":"aqua","bold":true}]
execute if entity @e[tag=SM,tag=HalloweenEvent] if score @s HighJump matches 86..95 run title @s actionbar [{"text":"|","color":"gray","bold":false},{"score":{"name":"@s","objective":"Health"},"color":"light_purple","bold":true},{"text":"| - ","color":"gray","bold":false},{"text":"||||||||","color":"yellow","bold":true},{"text":"||","color":"aqua","bold":true}]
execute if entity @e[tag=SM,tag=HalloweenEvent] if score @s HighJump matches 95.. run title @s actionbar [{"text":"|","color":"gray","bold":false},{"score":{"name":"@s","objective":"Health"},"color":"light_purple","bold":true},{"text":"| - ","color":"gray","bold":false},{"text":"||||||||||","color":"yellow","bold":true}]