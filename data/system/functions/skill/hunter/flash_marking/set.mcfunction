execute at @s as @a[team=Escape,distance=..40] at @s run summon item ~ ~ ~ {Tags:["NoKill","Flash"],Glowing:1b,NoGravity:1b,Item:{id:"minecraft:beacon",Count:1b},Age:5400,PickupDelay:999999,Glowing:1b}
execute at @s run particle minecraft:end_rod ~ ~ ~ 2.5 2.5 2.5 0 600 force @a[team=Hunter]
xp add @s 50 levels