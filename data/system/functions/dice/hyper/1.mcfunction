execute if entity @s[team=Escape] run tellraw @a [{"text":"[ダイス]","color":"dark_red","bold":true},{"text":" 全ての死亡者が復活した！","color":"aqua","bold":false}]
execute if entity @s[team=Escape] if entity @a[team=Died] run tellraw @a[team=Died] ["",{"selector":"@s"},{"text":" の手によって復活した。","color":"green"}]
execute if entity @s[team=Escape] if entity @a[team=Died] run scoreboard players set @a[team=Died] Health 100
execute if entity @s[team=Escape] if entity @a[team=Died] run replaceitem entity @a[team=Died] armor.head air
execute if entity @s[team=Escape] if entity @a[team=Died] run replaceitem entity @a[team=Died] armor.chest air
execute if entity @s[team=Escape] if entity @a[team=Died] run replaceitem entity @a[team=Died] armor.legs air
execute if entity @s[team=Escape] if entity @a[team=Died] run replaceitem entity @a[team=Died] armor.feet air
execute if entity @s[team=Escape] if entity @a[team=Died] run effect give @a[team=Died] minecraft:invisibility 10 0 true
execute if entity @s[team=Escape] if entity @a[team=Died] run effect give @a[team=Died] minecraft:speed 10 0 true
execute if entity @s[team=Escape] if entity @a[team=Died] run effect give @a[team=Died] minecraft:resistance 10 0 true
execute if entity @s[team=Escape] if entity @a[team=Died] run scoreboard players set @a[team=Died] InvisibleArmor 1
execute if entity @s[team=Escape] if entity @a[team=Died] as @a[team=Died] at @s run tp @s @e[tag=RandSpawn,limit=1,type=armor_stand,sort=random]
execute if entity @s[team=Escape] if entity @a[team=Died] run team join Escape @a[team=Died]

execute if entity @s[team=Hunter] run tellraw @a [{"text":"[ダイス]","color":"dark_red","bold":true},{"text":" 60秒間脱獄不可能になった！","color":"aqua","bold":false}]
execute if entity @s[team=Hunter] run data merge entity @e[tag=SM,limit=1] {PortalCooldown:1200}