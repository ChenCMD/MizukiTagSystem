tellraw @a ["",{"selector":"@s","color":"green"},{"text":" >> ","color":"green"},{"selector":"@a[tag=Death]","color":"green"},{"text":" [近距離]","color":"yellow"}]
tellraw @s ["",{"text":"累計捕獲数: ","color":"aqua"},{"score":{"name":"@s","objective":"TotalKill"}}]
function system:main/totalkill_mes
execute if entity @e[tag=SM,tag=!HideMode] run function system:armor/hunter