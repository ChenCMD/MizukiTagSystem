execute at @s run summon area_effect_cloud ~ ~0.5 ~ {Particle:"falling_dust barrier",ReapplicationDelay:2147483647,Radius:0.01f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:2400,DurationOnUse:0f,Age:0,WaitTime:0,Tags:["Trap"]}
execute at @s run scoreboard players operation @e[dx=0.0,dy=-0.5,dz=0.0,tag=Trap,tag=!Link_Trap] UserID = @s UserID
execute at @s run tag @e[dx=0.0,dy=-0.5,dz=0.0,tag=Trap,tag=!Link_Trap] add Link_Trap
execute at @s run playsound minecraft:block.anvil.use master @a[distance=..5] ~ ~ ~ 1 2.0
xp add @s 15 levels