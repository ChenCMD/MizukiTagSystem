summon item ~ ~ ~ {Tags:["NoKill","DeleyFlash"],NoGravity:1b,Item:{id:"minecraft:nether_star",Count:1b},Age:-32768,PickupDelay:32767}
scoreboard players operation @e[tag=DeleyFlash,tag=!ScoreSet,distance=0,limit=1] UserID = @s UserID
tag @e[tag=DeleyFlash,tag=!ScoreSet,distance=0,limit=1] add ScoreSet