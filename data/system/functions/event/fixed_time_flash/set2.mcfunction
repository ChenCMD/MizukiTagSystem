summon item ~ ~ ~ {Tags:["NoKill","DeleyFlash"],NoGravity:1b,Item:{id:"minecraft:nether_star",Count:1b},Age:-32768,PickupDelay:32767}
scoreboard players operation @e[tag=DeleyFlash,tag=!ScoreSet,distance=0,limit=1] UserID = @s UserID
<<<<<<< HEAD
tag @e[tag=DeleyFlash,tag=!ScoreSet,distance=0,limit=1] add ScoreSet

#DEBUG
execute if score $DEBUG DEBUG_CODE matches 4 run tellraw @a[tag=DebugView] [{"text":"[DEBUG] ","color":"dark_aqua"},{"text":"system:event/fixed_time_flash/set2.mcfunction run stats","color":"dark_aqua"},{"text":": ","color":"white"},{"text":"SUCCESS","color":"green"},{"text":"\n[DEBUG] ","color":"dark_aqua"},{"text":"Run from","color":"dark_aqua"},{"text":": ","color":"white"},{"selector":"@s","color":"light_purple"}]
execute if score $DEBUG DEBUG_CODE matches 4 run scoreboard players reset $DEBUG
=======
tag @e[tag=DeleyFlash,tag=!ScoreSet,distance=0,limit=1] add ScoreSet
>>>>>>> c2ae0ca74badf2fafec09781b1831ce200c8e070
