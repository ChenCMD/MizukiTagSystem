scoreboard players set @s Health 300
scoreboard players set @s HunterPenalty 1
tellraw @s [{"text":"死亡ペナルティにより、30秒後にスポーンします。","color":"green"}]
effect give @s minecraft:unluck 30 0 true
tp @s 1158.5 43.5 675.5