execute as @a[team=Escape] at @s run function system:event/fixed_time_flash/set2
execute as @a[team=Hunter] at @s run function system:event/fixed_time_flash/set2
scoreboard players operation $Calc_result AddTmp = $TimeFlash AddTmp
scoreboard players operation $Calc_result AddTmp /= $20 AddTmp
tellraw @a [{"text":"[◆] ","color":"yellow"},{"text":"全プレイヤーの足元にマーカーがセットされました。","color":"green"},{"text":"\n[◆] ","color":"yellow"},{"score":{"name":"$Calc_result","objective":"AddTmp"},"color":"green"},{"text":"秒以内に40m離れない場合不利になります。","color":"green"}]
scoreboard players reset $Calc_result AddTmp