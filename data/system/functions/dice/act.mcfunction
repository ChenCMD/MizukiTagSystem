scoreboard players add @s Dice_Deley 1
execute if entity @s[scores={Dice_Deley=60..},nbt={Item:{tag:{display:{Name:"{\"text\":\"スーパーダイス (イベント)\",\"italic\":false,\"bold\":true,\"color\":\"light_purple\"}"}}}}] as @a if score @s UserID = @e[scores={Dice_Deley=60..},nbt={Item:{tag:{display:{Name:"{\"text\":\"スーパーダイス (イベント)\",\"italic\":false,\"bold\":true,\"color\":\"light_purple\"}"}}}},limit=1] UserID at @s[scores={Dice_Deley=60..},nbt={Item:{tag:{display:{Name:"{\"text\":\"スーパーダイス (イベント)\",\"italic\":false,\"bold\":true,\"color\":\"light_purple\"}"}}}}] run function system:dice/event/set
execute if entity @s[scores={Dice_Deley=60..},nbt={Item:{tag:{display:{Name:"{\"text\":\"スーパーダイス (アイテム)\",\"italic\":false,\"bold\":true,\"color\":\"green\"}"}}}}] as @a if score @s UserID = @e[scores={Dice_Deley=60..},nbt={Item:{tag:{display:{Name:"{\"text\":\"スーパーダイス (アイテム)\",\"italic\":false,\"bold\":true,\"color\":\"green\"}"}}}},limit=1] UserID at @s[scores={Dice_Deley=60..},nbt={Item:{tag:{display:{Name:"{\"text\":\"スーパーダイス (アイテム)\",\"italic\":false,\"bold\":true,\"color\":\"green\"}"}}}}] run function system:dice/item/set
execute if entity @s[scores={Dice_Deley=60..},nbt={Item:{tag:{display:{Name:"{\"text\":\"スーパーダイス (?????)\",\"italic\":false,\"bold\":true,\"color\":\"dark_red\"}"}}}}] as @a if score @s UserID = @e[scores={Dice_Deley=60..},nbt={Item:{tag:{display:{Name:"{\"text\":\"スーパーダイス (?????)\",\"italic\":false,\"bold\":true,\"color\":\"dark_red\"}"}}}},limit=1] UserID at @s[scores={Dice_Deley=60..},nbt={Item:{tag:{display:{Name:"{\"text\":\"スーパーダイス (?????)\",\"italic\":false,\"bold\":true,\"color\":\"dark_red\"}"}}}}] run function system:dice/hyper/set
execute if entity @s[scores={Dice_Deley=60..}] run kill @s