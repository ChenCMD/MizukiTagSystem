#function random:generation
#scoreboard players operation @s Random %= $2 AddTmp
#scoreboard players add @s Random 1
#execute if score @s Random matches 1 run function system:event/fixed_time_flash/set
#execute if score @s Random matches 2 run function system:event/
function system:event/fixed_time_flash/set

#DEBUG
execute if score $DEBUG DEBUG_CODE matches 2 run tellraw @a[tag=DebugView] [{"text":"[DEBUG] ","color":"dark_aqua"},{"text":"system:event/activate.mcfunction run stats","color":"dark_aqua"},{"text":": ","color":"white"},{"text":"SUCCESS","color":"green"},{"text":"\n[DEBUG] ","color":"dark_aqua"},{"text":"Run from","color":"dark_aqua"},{"text":": ","color":"white"},{"selector":"@s","color":"light_purple"}]
execute if score $DEBUG DEBUG_CODE matches 2 run scoreboard players reset $DEBUG
