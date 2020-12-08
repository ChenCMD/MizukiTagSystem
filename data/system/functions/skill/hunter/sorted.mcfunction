scoreboard players operation @e[type=arrow,distance=..5,sort=nearest,limit=1] UserID = @s UserID
execute if entity @e[type=arrow,distance=..5,sort=nearest,limit=1] unless entity @s[team=Hunter,tag=GravityArrowReady,nbt=!{ActiveEffects:[{Id:27b}]},level=0] unless entity @s[team=Hunter,tag=ChaseArrowReady,nbt=!{ActiveEffects:[{Id:27b}]},level=0] run data merge entity @e[type=arrow,distance=..5,sort=nearest,limit=1] {Color:-1,crit:0b}
execute if entity @e[type=arrow,nbt={crit:1b},distance=..5,sort=nearest,limit=1] if entity @s[team=Hunter,tag=GravityArrowReady,nbt=!{ActiveEffects:[{Id:27b}]},level=0] run xp add @s 20 levels
execute if entity @e[type=arrow,nbt={crit:1b},distance=..5,sort=nearest,limit=1] if entity @s[team=Hunter,tag=GravityArrowReady,nbt=!{ActiveEffects:[{Id:27b}]},level=20] run function system:skill/hunter/gravity_arrow/set
execute if entity @e[type=arrow,nbt={crit:1b},distance=..5,sort=nearest,limit=1] if entity @s[team=Hunter,tag=ChaseArrowReady,nbt=!{ActiveEffects:[{Id:27b}]},level=0] run xp add @s 10 levels
execute if entity @e[type=arrow,nbt={crit:1b},distance=..5,sort=nearest,limit=1] if entity @s[team=Hunter,tag=ChaseArrowReady,nbt=!{ActiveEffects:[{Id:27b}]},level=10] as @e[type=arrow,distance=..5,sort=nearest,limit=1] run function system:skill/hunter/chase_arrow/set
tag @s remove GravityArrowReady
tag @s remove ChaseArrowReady
scoreboard players reset @s UseBow