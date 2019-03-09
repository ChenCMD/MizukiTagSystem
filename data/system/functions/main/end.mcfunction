scoreboard players add @a[team=Escape] Winstroke 1
execute as @a[team=Escape] if score @s Winstroke > @s WinStrokeMAX run scoreboard players operation @s WinStrokeMAX = @s Winstroke
title @a title {"text":"GAME END!!","color":"green","bold":true}
clear @a
effect clear @a
effect give @a minecraft:saturation 999999 0 true
effect give @a minecraft:resistance 999999 4 true
fill 1137 24 679 1137 25 678 orange_stained_glass
fill 961 26 444 961 24 445 orange_stained_glass
kill @e[tag=Trap]
kill @e[tag=Landmine]
kill @e[tag=Totem]
kill @e[tag=Flash]
tp @a[team=!Wait] 1237.5 201.5 684.5
tag @s[tag=SM,nbt={FallDistance:138204.6f}] remove GameStartCount
tag @a remove ChaseArrowReady
tag @a remove GravityArrowReady
xp set @a 0 levels
scoreboard players reset @s GameStartCount
scoreboard players add @s GameCount 1
execute if entity @s[scores={UseRuleSelect=3}] run scoreboard players set @a[team=Died] Winstroke 0
scoreboard players set @a Health 999999
tag @a remove GamePlayer
team join Wait @a[team=!OP]
tag @s remove GameRN
tag @s remove GameTime_Yes
scoreboard players operation @s GameTimeB = @s GameTimeC
bossbar set mizuki:time/mode/1 players
bossbar set mizuki:time/mode/2 players
bossbar set mizuki:time/mode/3 players