execute at @s run scoreboard players operation @e[tag=!Link_Dice,nbt={Item:{id:"minecraft:player_head",tag:{NoKill:1b}}},distance=..5] UserID = @s UserID
execute at @s run data merge entity @e[tag=!Link_Dice,nbt={Item:{id:"minecraft:player_head",tag:{NoKill:1b}}},distance=..5,limit=1] {Fire:-1s,Age:0s,Health:100s,PickupDelay:32767s}
execute at @s run tag @e[tag=!Link_Dice,nbt={Item:{id:"minecraft:player_head",tag:{NoKill:1b}}},distance=..5,limit=1] add Link_Dice
execute at @s positioned ~ ~1 ~ if entity @e[nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:"{\"text\":\"スーパーダイス (イベント)\",\"italic\":false,\"bold\":true,\"color\":\"light_purple\"}"}}}},distance=..5] run tellraw @a [{"selector":"@s"},{"text":" は","color":"aqua"},{"text":"スーパーダイス (イベント)","color":"light_purple","bold":true},{"text":"を振った！","color":"aqua"}]
execute at @s positioned ~ ~1 ~ if entity @e[nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:"{\"text\":\"スーパーダイス (アイテム)\",\"italic\":false,\"bold\":true,\"color\":\"green\"}"}}}},distance=..5] run tellraw @a [{"selector":"@s"},{"text":" は","color":"aqua"},{"text":"スーパーダイス (アイテム)","color":"green","bold":true},{"text":"を振った！","color":"aqua"}]
execute at @s positioned ~ ~1 ~ if entity @e[nbt={Item:{id:"minecraft:player_head",tag:{display:{Name:"{\"text\":\"スーパーダイス (?????)\",\"italic\":false,\"bold\":true,\"color\":\"dark_red\"}"}}}},distance=..5] run tellraw @a [{"selector":"@s"},{"text":" は","color":"aqua"},{"text":"スーパーダイス (?????)","color":"dark_red","bold":true},{"text":"を振った！","color":"aqua"}]
scoreboard players reset @s DiceDrop

summon item ~ ~ ~ {Health:1s}