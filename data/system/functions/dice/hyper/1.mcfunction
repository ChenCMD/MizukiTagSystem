
execute if entity @e[tag=SM,scores={UseRuleSelect=..2}] if entity @s[team=Escape] run tellraw @a [{"text":"[ダイス] ","color":"dark_red","bold":true},{"selector":"@s","bold":false},{"text":"はアイテムダイスを3つ入手した","color":"aqua","bold":false}]
execute if entity @e[tag=SM,scores={UseRuleSelect=..2}] if entity @s[team=Escape] run advancement grant @s only system:give_dice_item
execute if entity @e[tag=SM,scores={UseRuleSelect=..2}] if entity @s[team=Escape] run advancement grant @s only system:give_dice_item
execute if entity @e[tag=SM,scores={UseRuleSelect=..2}] if entity @s[team=Escape] run advancement grant @s only system:give_dice_item
execute if entity @e[tag=SM,scores={UseRuleSelect=3}] if entity @s[team=Escape] run tellraw @a [{"text":"[ダイス]","color":"dark_red","bold":true},{"text":" 全ての死亡者が復活した！","color":"aqua","bold":false}]
execute if entity @e[tag=SM,scores={UseRuleSelect=3}] if entity @s[team=Escape] if entity @a[team=Died] run tellraw @a[team=Died] ["",{"selector":"@s"},{"text":" の手によって復活した。","color":"green"}]
execute if entity @e[tag=SM,scores={UseRuleSelect=3}] if entity @s[team=Escape] if entity @a[team=Died] run scoreboard players set @a[team=Died] Health 100
execute if entity @e[tag=SM,scores={UseRuleSelect=3}] if entity @s[team=Escape] if entity @a[team=Died] run replaceitem entity @a[team=Died] armor.head air
execute if entity @e[tag=SM,scores={UseRuleSelect=3}] if entity @s[team=Escape] if entity @a[team=Died] run replaceitem entity @a[team=Died] armor.chest air
execute if entity @e[tag=SM,scores={UseRuleSelect=3}] if entity @s[team=Escape] if entity @a[team=Died] run replaceitem entity @a[team=Died] armor.legs air
execute if entity @e[tag=SM,scores={UseRuleSelect=3}] if entity @s[team=Escape] if entity @a[team=Died] run replaceitem entity @a[team=Died] armor.feet air
execute if entity @e[tag=SM,scores={UseRuleSelect=3}] if entity @s[team=Escape] if entity @a[team=Died] run effect give @a[team=Died] minecraft:invisibility 10 0 true
execute if entity @e[tag=SM,scores={UseRuleSelect=3}] if entity @s[team=Escape] if entity @a[team=Died] run effect give @a[team=Died] minecraft:speed 10 0 true
execute if entity @e[tag=SM,scores={UseRuleSelect=3}] if entity @s[team=Escape] if entity @a[team=Died] run effect give @a[team=Died] minecraft:luck 10 0 true
execute if entity @e[tag=SM,scores={UseRuleSelect=3}] if entity @s[team=Escape] if entity @a[team=Died] run scoreboard players set @a[team=Died] InvisibleArmor 200
execute if entity @e[tag=SM,scores={UseRuleSelect=3}] if entity @s[team=Escape] if entity @a[team=Died] run function system:main/chunk_load/rs
execute if entity @e[tag=SM,scores={UseRuleSelect=3}] if entity @s[team=Escape] if entity @a[team=Died] as @a[team=Died] at @s run tp @s @e[type=armor_stand,tag=RandSpawn,sort=random,limit=1]
execute if entity @e[tag=SM,scores={UseRuleSelect=3}] if entity @s[team=Escape] if entity @a[team=Died] run team join Escape @a[team=Died]

execute if entity @s[team=Hunter] run tellraw @a [{"text":"[ダイス]","color":"dark_red","bold":true},{"text":" 60秒間脱獄不可能になった！","color":"aqua","bold":false}]
execute if entity @s[team=Hunter] run data merge entity @e[tag=SM,limit=1] {PortalCooldown:1200}