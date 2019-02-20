scoreboard players add @e[tag=SM,nbt={FallDistance:138204.6f}] GameTimeA 1
execute as @e[tag=SM,nbt={FallDistance:138204.6f},limit=1] if entity @s[scores={GameTimeA=20..}] if entity @s[scores={GameTimeB=1..}] run scoreboard players remove @s GameTimeB 1
execute as @e[tag=SM,nbt={FallDistance:138204.6f},limit=1] if entity @s[scores={GameTimeA=20..}] run scoreboard players set @s GameTimeA 0
execute as @e[tag=SM,nbt={FallDistance:138204.6f},scores={GameTimeB=1..10}] run function system:main/time/end_count