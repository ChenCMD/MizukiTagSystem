effect give @s minecraft:invisibility 6 0 true
scoreboard players set @s InvisibleArmor 120
execute at @s run particle poof ~ ~1 ~ 0.4 0.4 0.4 0.01 800 force
replaceitem entity @s armor.head air
replaceitem entity @s armor.chest air
replaceitem entity @s armor.legs air
replaceitem entity @s armor.feet air
xp add @s 30 levels