scoreboard players operation @e[type=arrow,distance=..5,sort=nearest,limit=1] UserID = @s UserID
execute if entity @e[type=arrow,distance=..5,sort=nearest,limit=1,nbt={crit:1b}] if entity @s[team=Hunter,level=0,nbt=!{ActiveEffects:[{Id:27b}]},tag=GravityArrowReady] run xp add @s 20 levels
execute if entity @e[type=arrow,distance=..5,sort=nearest,limit=1,nbt={crit:1b}] if entity @s[team=Hunter,level=20,nbt=!{ActiveEffects:[{Id:27b}]},tag=GravityArrowReady] run function system:skill/hunter/gravity_arrow/set
execute if entity @e[type=arrow,distance=..5,sort=nearest,limit=1,nbt={crit:1b}] if entity @s[team=Hunter,level=0,nbt=!{ActiveEffects:[{Id:27b}]},tag=ChaseArrowReady] run xp add @s 10 levels
execute if entity @e[type=arrow,distance=..5,sort=nearest,limit=1,nbt={crit:1b}] if entity @s[team=Hunter,level=10,nbt=!{ActiveEffects:[{Id:27b}]},tag=ChaseArrowReady] as @e[type=arrow,distance=..5,sort=nearest,limit=1] run function system:skill/hunter/chase_arrow/set
tag @s remove GravityArrowReady
tag @s remove ChaseArrowReady
scoreboard players reset @s UseBow