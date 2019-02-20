execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=20}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] GameTimeC 60
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=21}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] GameTimeC 120
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=22}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] GameTimeC 180
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=23}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] GameTimeC 240
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=24}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] GameTimeC 300
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=25}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] GameTimeC 360
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=26}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] GameTimeC 420
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=27}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] GameTimeC 480
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=28}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] GameTimeC 540
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=29}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] GameTimeC 600
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=30}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] GameTimeC 660
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=31}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] GameTimeC 720
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=32}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] GameTimeC 780
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=33}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] GameTimeC 840
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=34}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] GameTimeC 900
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=35}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] GameTimeC 960
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=36}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] GameTimeC 1020
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=37}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] GameTimeC 1080
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=38}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] GameTimeC 1140
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=39}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] GameTimeC 1200
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=40}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] GameTimeC 1260
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=41}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] GameTimeC 1320
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=42}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] GameTimeC 1380
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=43}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] GameTimeC 1440
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=44}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] GameTimeC 1500
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=45}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] GameTimeC 1560
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=46}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] GameTimeC 1620
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=47}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] GameTimeC 1680
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=48}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] GameTimeC 1740
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={Menu=49}] run scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f}] GameTimeC 1800
execute if entity @e[distance=..6,type=item,nbt={Item:{tag:{MenuItem:1b}}},limit=1] store result score @e[tag=SM,nbt={FallDistance:138204.6f}] GameMinutes run data get entity @e[distance=..6,type=item,nbt={Item:{tag:{MenuItem:1b}}},limit=1] Item.tag.GameMinutes
tellraw @a [{"text":"制限時間を","color":"light_purple"},{"score":{"name":"@e[tag=SM,nbt={FallDistance:138204.6f},limit=1]","objective":"GameMinutes"},"color":"light_purple"},{"text":"分に設定しました","color":"light_purple"}]
function system:menu/pattern/3