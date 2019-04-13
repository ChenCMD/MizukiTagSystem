scoreboard players operation @e[type=arrow,distance=..5,sort=nearest,limit=1] UserID = @s UserID
execute if entity @s[team=Hunter,level=0,nbt=!{ActiveEffects:[{Id:27b}]},tag=GravityArrowReady] run function system:skill/hunter/gravity_arrow/set
execute if entity @s[team=Hunter,level=0,nbt=!{ActiveEffects:[{Id:27b}]},tag=GravityArrowReady] run xp add @s 10 levels
execute if entity @s[team=Hunter,level=0,nbt=!{ActiveEffects:[{Id:27b}]},tag=ChaseArrowReady] as @e[type=arrow,distance=..5,sort=nearest,limit=1] run function system:skill/hunter/chase_arrow/set
execute if entity @s[team=Hunter,level=0,nbt=!{ActiveEffects:[{Id:27b}]},tag=ChaseArrowReady] run xp add @s 15 levels
tag @s remove GravityArrowReady
tag @s remove ChaseArrowReady
scoreboard players reset @s UseBow