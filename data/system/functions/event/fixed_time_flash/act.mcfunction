execute as @a[distance=..40] if score @s UserID = @e[type=item,tag=DeleyFlash,distance=0,limit=1] UserID run effect give @s[team=Escape] minecraft:glowing 60 0 true
execute as @a[distance=..40] if score @s UserID = @e[type=item,tag=DeleyFlash,distance=0,limit=1] UserID run tag @s[team=Hunter] add Event_Death
kill @e[type=item,tag=DeleyFlash,distance=0,limit=1]

execute if entity @a[tag=Event_Death] run scoreboard players operation $Calc_result Ver = $TimeFlash Ver
execute if entity @a[tag=Event_Death] run scoreboard players operation $Calc_result Ver /= $20 Ver
execute if entity @a[tag=Event_Death] run tellraw @a [{"selector":"@a[tag=Event_Death]","bold":false},{"text":"は","color":"aqua"},{"score":{"name":"$Calc_result","objective":"Ver"},"color":"aqua"},{"text":"秒以内に40m離れずに死んだ...","color":"aqua","bold":false}]
execute if entity @a[tag=Event_Death] run scoreboard players reset $Calc_result Ver
execute if entity @a[tag=Event_Death] run scoreboard players set @a[tag=Event_Death] Health 0
execute if entity @a[tag=Event_Death] run playsound minecraft:entity.lightning_bolt.thunder player @s ~ ~ ~ 1 0.9 1
execute if entity @a[tag=Event_Death] as @a[tag=Event_Death] run function system:mode/hunter_death
execute if entity @a[tag=Event_Death] run tag @a[tag=Event_Death] remove Event_Death

#DEBUG
execute if score $DEBUG DEBUG_CODE matches 5 run tellraw @a[tag=DebugView] [{"text":"[DEBUG] ","color":"dark_aqua"},{"text":"system:event/fixed_time_flash/act.mcfunction run stats","color":"dark_aqua"},{"text":": ","color":"white"},{"text":"SUCCESS","color":"green"},{"text":"\n[DEBUG] ","color":"dark_aqua"},{"text":"Run from","color":"dark_aqua"},{"text":": ","color":"white"},{"selector":"@s","color":"light_purple"}]
execute if score $DEBUG DEBUG_CODE matches 5 run scoreboard players reset $DEBUG
