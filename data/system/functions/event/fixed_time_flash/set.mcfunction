execute as @a[team=Escape] at @s run function system:event/fixed_time_flash/set2
execute as @a[team=Hunter] at @s run function system:event/fixed_time_flash/set2
<<<<<<< HEAD
scoreboard players operation $Calc_result AddTmp = $TimeFlash AddTmp
scoreboard players operation $Calc_result AddTmp /= $20 AddTmp
tellraw @a [{"text":"[◆] ","color":"yellow"},{"text":"全プレイヤーの足元にマーカーがセットされました。","color":"green"},{"text":"\n[◆] ","color":"yellow"},{"score":{"name":"$Calc_result","objective":"AddTmp"},"color":"green"},{"text":"秒以内に40m離れない場合不利になります。","color":"green"}]
scoreboard players reset $Calc_result AddTmp

#DEBUG
execute if score $DEBUG DEBUG_CODE matches 3 run tellraw @a[tag=DebugView] [{"text":"[DEBUG] ","color":"dark_aqua"},{"text":"system:event/fixed_time_flash/set.mcfunction run stats","color":"dark_aqua"},{"text":": ","color":"white"},{"text":"SUCCESS","color":"green"},{"text":"\n[DEBUG] ","color":"dark_aqua"},{"text":"Run from","color":"dark_aqua"},{"text":": ","color":"white"},{"selector":"@s","color":"light_purple"}]
execute if score $DEBUG DEBUG_CODE matches 3 run scoreboard players reset $DEBUG
=======
tellraw @a [{"text":"[◆] ","color":"yellow"},{"text":"全プレイヤーの足元にマーカーがセットされました。","color":"green"},{"text":"\n[◆] ","color":"yellow"},{"text":"一分以内に40m離れない場合不利になります。","color":"green"}]
>>>>>>> c2ae0ca74badf2fafec09781b1831ce200c8e070
