execute at @s run scoreboard players operation @e[distance=..5,nbt={Item:{id:"minecraft:player_head",tag:{NoKill:1b}}},tag=!Link_Dice] UserID = @s UserID
execute at @s run data merge entity @e[distance=..5,nbt={Item:{id:"minecraft:player_head",tag:{NoKill:1b}}},tag=!Link_Dice,limit=1] {Fire:-1s,Age:0s,Health:100s,PickupDelay:32767s}
execute at @s run tag @e[distance=..5,nbt={Item:{id:"minecraft:player_head",tag:{NoKill:1b}}},tag=!Link_Dice,limit=1] add Link_Dice
scoreboard players reset @s DiceDrop