scoreboard players add @s TimeFlash 1
scoreboard players add @s EventRadarCount 1
execute if entity @s[scores={EventRadarCount=10..}] at @s run function system:event/fixed_time_flash/radar/act
scoreboard players reset @s[scores={EventRadarCount=10..}] EventRadarCount

#DEBUG
execute if score $DEBUG DEBUG_CODE matches 6 run tellraw @a[tag=DebugView] [{"text":"[DEBUG] ","color":"dark_aqua"},{"text":"system:event/fixed_time_flash/radar/act_base.mcfunction run stats","color":"dark_aqua"},{"text":": ","color":"white"},{"text":"SUCCESS","color":"green"},{"text":"\n[DEBUG] ","color":"dark_aqua"},{"text":"Run from","color":"dark_aqua"},{"text":": ","color":"white"},{"selector":"@s","color":"light_purple"}]
execute if score $DEBUG DEBUG_CODE matches 6 run scoreboard players reset $DEBUG