scoreboard players add @s Dice_Deley 1
<<<<<<< HEAD
execute if entity @s[scores={Dice_Deley=60..},nbt={Item:{tag:{display:{Name:"{\"text\":\"スーパーダイス (イベント)\",\"italic\":false,\"bold\":true,\"color\":\"light_purple\"}"}}}}] as @a if score @s UserID = @e[scores={Dice_Deley=60..},nbt={Item:{tag:{display:{Name:"{\"text\":\"スーパーダイス (イベント)\",\"italic\":false,\"bold\":true,\"color\":\"light_purple\"}"}}}},limit=1] UserID at @e[scores={Dice_Deley=60..},nbt={Item:{tag:{display:{Name:"{\"text\":\"スーパーダイス (イベント)\",\"italic\":false,\"bold\":true,\"color\":\"light_purple\"}"}}}}] run function system:dice/event/set
execute if entity @s[scores={Dice_Deley=60..},nbt={Item:{tag:{display:{Name:"{\"text\":\"スーパーダイス (アイテム)\",\"italic\":false,\"bold\":true,\"color\":\"green\"}"}}}}] as @a if score @s UserID = @e[scores={Dice_Deley=60..},nbt={Item:{tag:{display:{Name:"{\"text\":\"スーパーダイス (アイテム)\",\"italic\":false,\"bold\":true,\"color\":\"green\"}"}}}},limit=1] UserID at @e[scores={Dice_Deley=60..},nbt={Item:{tag:{display:{Name:"{\"text\":\"スーパーダイス (アイテム)\",\"italic\":false,\"bold\":true,\"color\":\"green\"}"}}}}] run function system:dice/item/set
execute if entity @s[scores={Dice_Deley=60..},nbt={Item:{tag:{display:{Name:"{\"text\":\"スーパーダイス (?????)\",\"italic\":false,\"bold\":true,\"color\":\"dark_red\"}"}}}}] as @a if score @s UserID = @e[scores={Dice_Deley=60..},nbt={Item:{tag:{display:{Name:"{\"text\":\"スーパーダイス (?????)\",\"italic\":false,\"bold\":true,\"color\":\"dark_red\"}"}}}},limit=1] UserID at @e[scores={Dice_Deley=60..},nbt={Item:{tag:{display:{Name:"{\"text\":\"スーパーダイス (?????)\",\"italic\":false,\"bold\":true,\"color\":\"dark_red\"}"}}}}] run function system:dice/hyper/set
execute if entity @s[scores={Dice_Deley=60..}] run kill @s

#DEBUG
execute if score $DEBUG DEBUG_CODE matches 8 run tellraw @a[tag=DebugView] [{"text":"[DEBUG] ","color":"dark_aqua"},{"text":"system:dice/act.mcfunction run stats","color":"dark_aqua"},{"text":": ","color":"white"},{"text":"SUCCESS","color":"green"},{"text":"\n[DEBUG] ","color":"dark_aqua"},{"text":"Run from","color":"dark_aqua"},{"text":": ","color":"white"},{"selector":"@s","color":"light_purple"}]
execute if score $DEBUG DEBUG_CODE matches 8 run scoreboard players reset $DEBUG
=======
execute if entity @s[scores={Dice_Deley=60..},nbt={Item:{tag:{display:{Name:"{\"text\":\"スーパーダイス (イベント)\",\"italic\":false,\"bold\":true,\"color\":\"light_purple\"}"}}}}] as @a if score @s UserID = @e[scores={Dice_Deley=60..},nbt={Item:{tag:{display:{Name:"{\"text\":\"スーパーダイス (イベント)\",\"italic\":false,\"bold\":true,\"color\":\"light_purple\"}"}}}},limit=1] UserID run function system:dice/event/set
execute if entity @s[scores={Dice_Deley=60..},nbt={Item:{tag:{display:{Name:"{\"text\":\"スーパーダイス (アイテム)\",\"italic\":false,\"bold\":true,\"color\":\"green\"}"}}}}] as @a if score @s UserID = @e[scores={Dice_Deley=60..},nbt={Item:{tag:{display:{Name:"{\"text\":\"スーパーダイス (アイテム)\",\"italic\":false,\"bold\":true,\"color\":\"green\"}"}}}},limit=1] UserID run function system:dice/item/set
execute if entity @s[scores={Dice_Deley=60..},nbt={Item:{tag:{display:{Name:"{\"text\":\"スーパーダイス (?????)\",\"italic\":false,\"bold\":true,\"color\":\"dark_red\"}"}}}}] as @a if score @s UserID = @e[scores={Dice_Deley=60..},nbt={Item:{tag:{display:{Name:"{\"text\":\"スーパーダイス (?????)\",\"italic\":false,\"bold\":true,\"color\":\"dark_red\"}"}}}},limit=1] UserID run function system:dice/hyper/set
execute if entity @s[scores={Dice_Deley=60..}] run kill @s
>>>>>>> c2ae0ca74badf2fafec09781b1831ce200c8e070
