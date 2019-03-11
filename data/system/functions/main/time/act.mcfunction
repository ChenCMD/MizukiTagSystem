scoreboard players add @e[tag=SM] GameTimeA 1
execute as @e[tag=SM,limit=1] if entity @s[scores={GameTimeA=20..}] if entity @s[scores={GameTimeB=1..}] run scoreboard players remove @s GameTimeB 1
execute as @e[tag=SM,limit=1] if entity @s[scores={GameTimeA=20..}] if entity @s[scores={GameTimeB=1..}] as @a[team=Hunter] run function system:armor/hunter
execute as @e[tag=SM,limit=1] if entity @s[scores={GameTimeA=20..}] if entity @s[scores={GameTimeB=1..}] as @a[team=Escape] unless entity @s[scores={InvisibleArmor=0..}] run function system:armor/escape
execute as @e[tag=SM,limit=1] if entity @s[scores={GameTimeA=20..}] run scoreboard players set @s GameTimeA 0
execute as @e[tag=SM,scores={GameTimeB=1..10}] run function system:main/time/end_count