
tellraw @s {"text":"リセットポーションを飲んだ！","color":"green"}
xp set @s 0 levels
execute if entity @a[team=Hunter] run scoreboard players set @s Health 300
execute if entity @a[team=Escape] run scoreboard players set @s Health 100