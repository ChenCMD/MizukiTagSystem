execute as @a[scores={Sneak=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:1224s}}}] at @s if block ~ ~-0.01 ~ minecraft:snow run function system:event/xmas/act
execute as @a unless entity @s[scores={Sneak=0..}] run scoreboard players reset @s SnowScore
execute as @a unless entity @s[nbt={SelectedItem:{id:"minecraft:iron_shovel"}}] run scoreboard players reset @s SnowScore
execute as @a at @s unless block ~ ~-0.01 ~ minecraft:snow run scoreboard players reset @s SnowScore