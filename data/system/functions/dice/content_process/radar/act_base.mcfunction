scoreboard players add @s RadarCount 1
execute if entity @s[scores={RadarCount=10..}] run function system:dice/content_process/radar/act
scoreboard players reset @s[scores={RadarCount=10..}] RadarCount
scoreboard players remove @s Radar_Remaining 1
scoreboard players reset @s[scores={Radar_Remaining=..0}] RadarCount
scoreboard players reset @s[scores={Radar_Remaining=..0}] Radar_Remaining