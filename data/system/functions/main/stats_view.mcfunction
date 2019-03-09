tellraw @s [{"text":"累計捕獲数","color":"green"},{"text":": ","color":"white"},{"score":{"name":"@s","objective":"TotalKill","color":"green"}},{"text":"人","color":"green"}]
tellraw @s [{"text":"最高連続勝利数","color":"green"},{"text":": ","color":"white"},{"score":{"name":"@s","objective":"WinStrokeMAX","color":"green"}},{"text":" (","color":"white"},{"score":{"name":"@s","objective":"WinStroke","color":"green"}},{"text":") ","color":"white"},{"text":"回","color":"green"}]
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0.4
scoreboard players reset @s Trigger