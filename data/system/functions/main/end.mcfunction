scoreboard players add @a[team=Escape] Winstroke 1
execute as @a[team=Escape] if score @s Winstroke > @s WinStrokeMAX run scoreboard players operation @s WinStrokeMAX = @s Winstroke
scoreboard players reset @a HunterPenalty
title @a title {"text":"GAME END!!","color":"green","bold":true}


tag @a remove ItemGive
clear @a
effect clear @a
effect give @a minecraft:saturation 999999 0 true
effect give @a minecraft:resistance 999999 4 true
fill 1137 24 679 1137 25 678 orange_stained_glass
fill 961 26 444 961 24 445 orange_stained_glass
execute as @e[tag=InstantWall] at @s run setblock ~ ~ ~ air destroy
execute as @e[type=!player,tag=!SM,tag=!HunterSpawnPoint,tag=!EscapeSpawnPoint,tag=!RandSpawn] unless entity @s[tag=!Link_Dice,tag=!SuperBomb,tag=!Smoke,tag=!CaptureNet,tag=!InstantWall,tag=!Trap,tag=!Landmine,tag=!Totem,tag=!Flash,tag=!DeleyFlash] run kill @s
kill @e[type=arrow]
tag @s[tag=SM] remove GameStartCount
tag @a remove ChaseArrowReady
tag @a remove GravityArrowReady
tag @a remove HaveLoD
xp set @a 0 levels
function system:main/ending_show_stats
scoreboard players reset @s GameStartCount
scoreboard players add @s GameCount 1
execute if entity @s[scores={UseRuleSelect=1}] run scoreboard players set @a[team=Died] Winstroke 0
execute if entity @s[scores={UseRuleSelect=3}] run scoreboard players set @a[team=Died] Winstroke 0
scoreboard players set @a Health 999999
tp @a[team=!Wait] 9989.5 136.5 9996.5
team join Wait @a[team=!OP]
tag @a remove GamePlayer
tag @s remove GameRN
tag @s remove GameTime_Yes
scoreboard players operation @s GameTimeB = @s GameTimeC
bossbar set mizuki:time/mode1 players
bossbar set mizuki:time/mode2 players
bossbar set mizuki:time/mode3 players