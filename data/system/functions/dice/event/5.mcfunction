tag @a[team=Escape] add Dice_Target_Sort
tag @a[team=Hunter] add Dice_Target_Sort
tag @a[tag=Dice_Target_Sort,sort=random,limit=1] add Dice_Death
tag @a remove Dice_Target_Sort
tellraw @a [{"text":"[ダイス] ","color":"light_purple","bold":true},{"selector":"@a[tag=Dice_Death]"},{"text":"は死神に目を付けられた！","color":"aqua","bold":false}]
scoreboard players set @a[tag=Dice_Death] Health 0
playsound minecraft:entity.lightning_bolt.thunder player @a ~ ~ ~ 1 0.9 1
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={UseRuleSelect=1}] as @a[tag=Dice_Death] run function system:mode/1
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={UseRuleSelect=2}] as @a[tag=Dice_Death] run function system:mode/2
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={UseRuleSelect=3}] as @a[tag=Dice_Death] run function system:mode/3
tag @a[tag=Dice_Death] remove Dice_Death