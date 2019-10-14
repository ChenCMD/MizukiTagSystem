tellraw @a ["",{"selector":"@s","color":"green"},{"text":" >> ","color":"green"},{"selector":"@a[tag=SkillDeath]","color":"green"},{"text":" [スキル]","color":"red"}]
scoreboard players add @s TotalKill 1
scoreboard players add @s kills_in_match 1
tellraw @s ["",{"text":"累計捕獲数: ","color":"aqua"},{"score":{"name":"@s","objective":"TotalKill"}}]
function system:main/totalkill_mes
execute if entity @e[tag=SM,tag=!HideMode] run function system:armor/hunter