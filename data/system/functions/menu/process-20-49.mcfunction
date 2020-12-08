execute if entity @e[tag=SM,scores={Menu=20}] run scoreboard players set @e[tag=SM] GameTimeC 60
execute if entity @e[tag=SM,scores={Menu=21}] run scoreboard players set @e[tag=SM] GameTimeC 120
execute if entity @e[tag=SM,scores={Menu=22}] run scoreboard players set @e[tag=SM] GameTimeC 180
execute if entity @e[tag=SM,scores={Menu=20..22}] run tellraw @a [{"text":"[WARN]","color":"yellow"},{"text":" 3分以下は推奨されません。バグ等が発生する可能性があります。","color":"aqua"}]
execute if entity @e[tag=SM,scores={Menu=23}] run scoreboard players set @e[tag=SM] GameTimeC 240
execute if entity @e[tag=SM,scores={Menu=24}] run scoreboard players set @e[tag=SM] GameTimeC 300
execute if entity @e[tag=SM,scores={Menu=25}] run scoreboard players set @e[tag=SM] GameTimeC 360
execute if entity @e[tag=SM,scores={Menu=26}] run scoreboard players set @e[tag=SM] GameTimeC 420
execute if entity @e[tag=SM,scores={Menu=27}] run scoreboard players set @e[tag=SM] GameTimeC 480
execute if entity @e[tag=SM,scores={Menu=28}] run scoreboard players set @e[tag=SM] GameTimeC 540
execute if entity @e[tag=SM,scores={Menu=29}] run scoreboard players set @e[tag=SM] GameTimeC 600
execute if entity @e[tag=SM,scores={Menu=30}] run scoreboard players set @e[tag=SM] GameTimeC 660
execute if entity @e[tag=SM,scores={Menu=31}] run scoreboard players set @e[tag=SM] GameTimeC 720
execute if entity @e[tag=SM,scores={Menu=32}] run scoreboard players set @e[tag=SM] GameTimeC 780
execute if entity @e[tag=SM,scores={Menu=33}] run scoreboard players set @e[tag=SM] GameTimeC 840
execute if entity @e[tag=SM,scores={Menu=34}] run scoreboard players set @e[tag=SM] GameTimeC 900
execute if entity @e[tag=SM,scores={Menu=35}] run scoreboard players set @e[tag=SM] GameTimeC 960
execute if entity @e[tag=SM,scores={Menu=36}] run scoreboard players set @e[tag=SM] GameTimeC 1020
execute if entity @e[tag=SM,scores={Menu=37}] run scoreboard players set @e[tag=SM] GameTimeC 1080
execute if entity @e[tag=SM,scores={Menu=38}] run scoreboard players set @e[tag=SM] GameTimeC 1140
execute if entity @e[tag=SM,scores={Menu=39}] run scoreboard players set @e[tag=SM] GameTimeC 1200
execute if entity @e[tag=SM,scores={Menu=40}] run scoreboard players set @e[tag=SM] GameTimeC 1260
execute if entity @e[tag=SM,scores={Menu=41}] run scoreboard players set @e[tag=SM] GameTimeC 1320
execute if entity @e[tag=SM,scores={Menu=42}] run scoreboard players set @e[tag=SM] GameTimeC 1380
execute if entity @e[tag=SM,scores={Menu=43}] run scoreboard players set @e[tag=SM] GameTimeC 1440
execute if entity @e[tag=SM,scores={Menu=44}] run scoreboard players set @e[tag=SM] GameTimeC 1500
execute if entity @e[tag=SM,scores={Menu=45}] run scoreboard players set @e[tag=SM] GameTimeC 1560
execute if entity @e[tag=SM,scores={Menu=46}] run scoreboard players set @e[tag=SM] GameTimeC 1620
execute if entity @e[tag=SM,scores={Menu=47}] run scoreboard players set @e[tag=SM] GameTimeC 1680
execute if entity @e[tag=SM,scores={Menu=48}] run scoreboard players set @e[tag=SM] GameTimeC 1740
execute if entity @e[tag=SM,scores={Menu=49}] run scoreboard players set @e[tag=SM] GameTimeC 1800
execute if entity @e[type=item,nbt={Item:{tag:{MenuItem:1b}}},distance=..6,limit=1] store result score @e[tag=SM] GameMinutes run data get entity @e[type=item,nbt={Item:{tag:{MenuItem:1b}}},distance=..6,limit=1] Item.tag.GameMinutes
tellraw @a [{"text":"制限時間を","color":"light_purple"},{"score":{"name":"@e[tag=SM,limit=1]","objective":"GameMinutes"},"color":"light_purple"},{"text":"分に設定しました","color":"light_purple"}]
function system:menu/pattern/3