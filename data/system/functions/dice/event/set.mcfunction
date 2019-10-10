function random:generation
scoreboard players operation @s Random %= $6 Ver
scoreboard players add @s Random 1
execute if entity @s[scores={Random=1}] run function system:dice/event/1
execute if entity @s[scores={Random=2}] run function system:dice/event/2
execute if entity @s[scores={Random=3}] run function system:dice/event/3
execute if entity @s[scores={Random=4}] run function system:dice/event/4
execute if entity @s[scores={Random=5}] run function system:dice/event/5
execute if entity @s[scores={Random=6}] run function system:dice/event/6

#DEBUG
execute if score $DEBUG DEBUG_CODE matches 9 run tellraw @a[tag=DebugView] [{"text":"[DEBUG] ","color":"dark_aqua"},{"text":"system:dice/event/set.mcfunction run stats","color":"dark_aqua"},{"text":": ","color":"white"},{"text":"SUCCESS","color":"green"},{"text":"\n[DEBUG] ","color":"dark_aqua"},{"text":"Run from","color":"dark_aqua"},{"text":": ","color":"white"},{"selector":"@s","color":"light_purple"}]
execute if score $DEBUG DEBUG_CODE matches 9 run scoreboard players reset $DEBUG
