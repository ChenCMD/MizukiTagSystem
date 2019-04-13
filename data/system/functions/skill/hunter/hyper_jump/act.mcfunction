scoreboard players add @s HighJump 1
effect give @s minecraft:slowness 1 9 true
execute if score @s HighJump matches 1 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 0.5
execute if score @s HighJump matches 1..6 run effect give @s minecraft:jump_boost 1 0 true
execute if score @s HighJump matches 7 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 0.6
execute if score @s HighJump matches 7..12 run effect give @s minecraft:jump_boost 1 1 true
execute if score @s HighJump matches 13 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 0.7
execute if score @s HighJump matches 13..18 run effect give @s minecraft:jump_boost 1 2 true
execute if score @s HighJump matches 19 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 0.8
execute if score @s HighJump matches 19..24 run effect give @s minecraft:jump_boost 1 3 true
execute if score @s HighJump matches 25 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 0.9
execute if score @s HighJump matches 25..30 run effect give @s minecraft:jump_boost 1 4 true
execute if score @s HighJump matches 31 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1.0
execute if score @s HighJump matches 31..36 run effect give @s minecraft:jump_boost 1 5 true
execute if score @s HighJump matches 37 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1.1
execute if score @s HighJump matches 37..42 run effect give @s minecraft:jump_boost 1 6 true
execute if score @s HighJump matches 43 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1.2
execute if score @s HighJump matches 43..48 run effect give @s minecraft:jump_boost 1 7 true
execute if score @s HighJump matches 49 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1.3
execute if score @s HighJump matches 49..54 run effect give @s minecraft:jump_boost 1 8 true
execute if score @s HighJump matches 55 run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1.4
execute if score @s HighJump matches 55..99 run effect give @s minecraft:jump_boost 1 9 true


execute if score @s HighJump matches 1..6 run title @s actionbar [{"text":"|","color":"gray","bold":false},{"score":{"name":"@s","objective":"Health"},"color":"light_purple","bold":true},{"text":"| - ","color":"gray","bold":false},{"text":"|","color":"aqua","bold":true},{"text":"|||||||||","color":"gray","bold":true}]
execute if score @s HighJump matches 7..12 run title @s actionbar [{"text":"|","color":"gray","bold":false},{"score":{"name":"@s","objective":"Health"},"color":"light_purple","bold":true},{"text":"| - ","color":"gray","bold":false},{"text":"||","color":"aqua","bold":true},{"text":"||||||||","color":"gray","bold":true}]
execute if score @s HighJump matches 13..18 run title @s actionbar [{"text":"|","color":"gray","bold":false},{"score":{"name":"@s","objective":"Health"},"color":"light_purple","bold":true},{"text":"| - ","color":"gray","bold":false},{"text":"|||","color":"aqua","bold":true},{"text":"|||||||","color":"gray","bold":true}]
execute if score @s HighJump matches 19..24 run title @s actionbar [{"text":"|","color":"gray","bold":false},{"score":{"name":"@s","objective":"Health"},"color":"light_purple","bold":true},{"text":"| - ","color":"gray","bold":false},{"text":"||||","color":"aqua","bold":true},{"text":"||||||","color":"gray","bold":true}]
execute if score @s HighJump matches 25..30 run title @s actionbar [{"text":"|","color":"gray","bold":false},{"score":{"name":"@s","objective":"Health"},"color":"light_purple","bold":true},{"text":"| - ","color":"gray","bold":false},{"text":"|||||","color":"aqua","bold":true},{"text":"|||||","color":"gray","bold":true}]
execute if score @s HighJump matches 31..36 run title @s actionbar [{"text":"|","color":"gray","bold":false},{"score":{"name":"@s","objective":"Health"},"color":"light_purple","bold":true},{"text":"| - ","color":"gray","bold":false},{"text":"||||||","color":"aqua","bold":true},{"text":"||||","color":"gray","bold":true}]
execute if score @s HighJump matches 37..42 run title @s actionbar [{"text":"|","color":"gray","bold":false},{"score":{"name":"@s","objective":"Health"},"color":"light_purple","bold":true},{"text":"| - ","color":"gray","bold":false},{"text":"|||||||","color":"aqua","bold":true},{"text":"|||","color":"gray","bold":true}]
execute if score @s HighJump matches 43..48 run title @s actionbar [{"text":"|","color":"gray","bold":false},{"score":{"name":"@s","objective":"Health"},"color":"light_purple","bold":true},{"text":"| - ","color":"gray","bold":false},{"text":"||||||||","color":"aqua","bold":true},{"text":"||","color":"gray","bold":true}]
execute if score @s HighJump matches 49..54 run title @s actionbar [{"text":"|","color":"gray","bold":false},{"score":{"name":"@s","objective":"Health"},"color":"light_purple","bold":true},{"text":"| - ","color":"gray","bold":false},{"text":"|||||||||","color":"aqua","bold":true},{"text":"|","color":"gray","bold":true}]
execute if score @s HighJump matches 55.. run title @s actionbar [{"text":"|","color":"gray","bold":false},{"score":{"name":"@s","objective":"Health"},"color":"light_purple","bold":true},{"text":"| - ","color":"gray","bold":false},{"text":"||||||||||","color":"aqua","bold":true}]