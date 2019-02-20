execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=50}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] SpeedMAX 0
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=51}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] SpeedMAX 1
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=52}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] SpeedMAX 2
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=53}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] SpeedMAX 3
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=54}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] SpeedMAX 4
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=55}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] SpeedMAX 5
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=50..55}] run tellraw @a [{"text":"スピード使用回数を","color":"light_purple"},{"score":{"name":"@e[tag=SM,nbt={FallDistance:138204.6f}]","objective":"SpeedMAX"},"color":"light_purple"},{"text":"回に設定しました","color":"light_purple"}]

execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=56}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] HideMAX 0
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=57}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] HideMAX 1
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=58}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] HideMAX 2
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=59}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] HideMAX 3
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=60}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] HideMAX 4
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=61}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] HideMAX 5
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=56..61}] run tellraw @a [{"text":"透明使用回数を","color":"light_purple"},{"score":{"name":"@e[tag=SM,nbt={FallDistance:138204.6f}]","objective":"HideMAX"},"color":"light_purple"},{"text":"回に設定しました","color":"light_purple"}]

execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=62}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] TPMAX 0
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=63}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] TPMAX 1
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=64}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] TPMAX 2
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=65}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] TPMAX 3
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=66}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] TPMAX 4
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=67}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] TPMAX 5
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=62..67}] run tellraw @a [{"text":"テレポート使用回数を","color":"light_purple"},{"score":{"name":"@e[tag=SM,nbt={FallDistance:138204.6f}]","objective":"TPMAX"},"color":"light_purple"},{"text":"回に設定しました","color":"light_purple"}]

execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=68}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] FlashMAX 0
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=69}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] FlashMAX 1
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=70}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] FlashMAX 2
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=71}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] FlashMAX 3
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=72}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] FlashMAX 4
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=73}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] FlashMAX 5
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=68..73}] run tellraw @a [{"text":"フラッシュマーカー使用回数を","color":"light_purple"},{"score":{"name":"@e[tag=SM,nbt={FallDistance:138204.6f}]","objective":"FlashMAX"},"color":"light_purple"},{"text":"回に設定しました","color":"light_purple"}]

execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=74}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] TrapMAX 0
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=75}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] TrapMAX 1
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=76}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] TrapMAX 2
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=77}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] TrapMAX 3
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=78}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] TrapMAX 4
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=79}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] TrapMAX 5
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=74..79}] run tellraw @a [{"text":"トラップ使用回数を","color":"light_purple"},{"score":{"name":"@e[tag=SM,nbt={FallDistance:138204.6f}]","objective":"FlashMAX"},"color":"light_purple"},{"text":"回に設定しました","color":"light_purple"}]

function system:menu/pattern/4