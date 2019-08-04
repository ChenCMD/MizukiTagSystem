execute as @a[team=Escape] at @s run function system:event/fixed_time_flash/set2
execute as @a[team=Hunter] at @s run function system:event/fixed_time_flash/set2
tellraw @a [{"text":"[◆] ","color":"yellow"},{"text":"全プレイヤーの足元にマーカーがセットされました。","color":"green"},{"text":"\n[◆] ","color":"yellow"},{"text":"一分以内に40m離れない場合不利になります。","color":"green"}]