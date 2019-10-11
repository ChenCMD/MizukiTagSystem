tp @s @e[tag=PrisonPos,limit=1]
scoreboard players set @s Health 999999
effect clear @s minecraft:glowing
effect give @s weakness 999999 99 true
xp set @s 0 levels
team join Died @s