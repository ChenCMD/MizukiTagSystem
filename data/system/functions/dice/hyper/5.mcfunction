execute as @a if score @s UserID = @e[scores={Dice_Deley=60..},nbt={Item:{tag:{display:{Name:"{\"text\":\"スーパーダイス (?????)\",\"italic\":false,\"bold\":true,\"color\":\"dark_red\"}"}}}},limit=1] UserID run tag @s add UnLuckyDied
tellraw @a [{"text":"[ダイス] ","color":"light_purple","bold":true},{"selector":"@a[tag=UnLuckyDied]","bold":false},{"text":"はダイスの取り扱いを間違えて死んでしまった...","color":"red","bold":false}]
scoreboard players set @a[tag=UnLuckyDied] Health 0
playsound minecraft:entity.lightning_bolt.thunder player @a ~ ~ ~ 1 0.9 1
execute as @a[tag=UnLuckyDied,team=Hunter] run function system:mode/hunter_death
execute if entity @e[tag=SM,scores={UseRuleSelect=1}] as @a[tag=UnLuckyDied,team=Escape] run function system:mode/1
execute if entity @e[tag=SM,scores={UseRuleSelect=2}] as @a[tag=UnLuckyDied,team=Escape] run function system:mode/2
execute if entity @e[tag=SM,scores={UseRuleSelect=3}] as @a[tag=UnLuckyDied,team=Escape] run function system:mode/3
tag @a[tag=UnLuckyDied] remove UnLuckyDied