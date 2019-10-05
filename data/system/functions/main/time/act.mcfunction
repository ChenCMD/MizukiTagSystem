scoreboard players add @e[tag=SM] GameTimeA 1
execute as @e[tag=SM,limit=1] if entity @s[scores={GameTimeA=20..,GameTimeB=1..}] run scoreboard players remove @s GameTimeB 1
execute as @e[tag=SM,limit=1] if entity @s[scores={GameTimeA=20..,GameTimeB=1..,LoDDeley=0..}] run scoreboard players remove @s LoDDeley 1
execute as @e[tag=SM,limit=1] if entity @s[scores={GameTimeA=20..,GameTimeB=1..,LoDDeley=0}] run tellraw @a {"text":"Luck of Diceが使用可能になった！","color":"green"}
execute as @e[tag=SM,limit=1] if entity @s[scores={GameTimeA=20..,GameTimeB=1..,LoDDeley=0}] run scoreboard players reset @s LoDDeley
execute as @e[tag=SM,limit=1] if entity @s[scores={GameTimeA=20..,GameTimeB=1..},tag=!HideMode] as @a[team=Hunter] run function system:armor/hunter
execute as @e[tag=SM,limit=1] if entity @s[scores={GameTimeA=20..,GameTimeB=1..}] if entity @s[tag=!HideMode] as @a[team=Escape] unless entity @s[scores={InvisibleArmor=0..}] run function system:armor/escape
execute as @e[tag=SM,limit=1] if entity @s[scores={GameTimeA=20..,GameTimeB=1..}] run function system:main/time/check_100sec
execute as @e[tag=SM,limit=1] if entity @s[scores={GameTimeA=20..}] run scoreboard players set @s GameTimeA 0
execute as @e[tag=SM,scores={GameTimeB=1..10}] run function system:main/time/end_count