scoreboard players add @e[tag=SM] GameTimeA 1
execute as @e[tag=SM,limit=1] if entity @s[scores={GameTimeA=20..,GameTimeB=1..}] run scoreboard players remove @s GameTimeB 1
execute as @e[tag=SM,limit=1] if entity @s[scores={GameTimeA=20..,GameTimeB=1..,LoDDelay=0..}] run scoreboard players remove @s LoDDelay 1
execute as @e[tag=SM,limit=1] if entity @s[scores={GameTimeA=20..,GameTimeB=1..,LoDDelay=0}] if entity @e[tag=SM,tag=!HalloweenEvent] run tellraw @a {"text":"Luck of Diceが使用可能になった！","color":"green"}
execute as @e[tag=SM,limit=1] if entity @s[scores={GameTimeA=20..,GameTimeB=1..,LoDDelay=0}] if entity @e[tag=SM,tag=HalloweenEvent] run tellraw @a {"text":"お菓子箱を開けれるようになった！","color":"green"}
execute as @e[tag=SM,limit=1] if entity @s[scores={GameTimeA=20..,GameTimeB=1..,LoDDelay=0}] run scoreboard players reset @s LoDDelay
execute as @e[tag=SM,limit=1] if entity @s[scores={GameTimeA=20..,GameTimeB=1..},tag=!HideMode] as @a[team=Hunter] run function system:armor/hunter
execute as @e[tag=SM,limit=1] if entity @s[scores={GameTimeA=20..,GameTimeB=1..}] if entity @s[tag=!HideMode] as @a[team=Escape] unless entity @s[scores={InvisibleArmor=0..}] run function system:armor/escape
execute as @e[tag=SM,limit=1] if entity @s[scores={GameTimeA=20..,GameTimeB=1..}] run function system:main/time/check_event_activate
execute as @e[tag=SM,limit=1] if entity @s[scores={GameTimeA=20..}] run scoreboard players set @s GameTimeA 0
execute as @e[tag=SM,scores={GameTimeB=1..10}] run function system:main/time/end_count