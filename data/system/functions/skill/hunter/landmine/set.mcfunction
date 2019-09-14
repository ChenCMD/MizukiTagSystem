execute at @s run summon area_effect_cloud ~ ~0.5 ~ {Particle:"dolphin",ReapplicationDelay:2147483647,Radius:0.01f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:3600,DurationOnUse:0f,Age:0,WaitTime:0,Tags:["Landmine"]}
execute at @s run scoreboard players operation @e[dx=0.0,dy=-0.5,dz=0.0,tag=Landmine,tag=!Link_Landmine] UserID = @s UserID
execute at @s run tag @e[dx=0.0,dy=-0.5,dz=0.0,tag=Landmine,tag=!Link_Landmine] add Link_Landmine
execute at @s run playsound minecraft:block.anvil.use master @a[distance=..5] ~ ~ ~ 1 2.0
xp add @s 20 levels