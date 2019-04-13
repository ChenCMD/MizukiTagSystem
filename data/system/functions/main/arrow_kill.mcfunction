tellraw @a ["",{"selector":"@s","color":"green"},{"text":" >> ","color":"green"},{"selector":"@a[tag=ArrowDeath]","color":"green"},{"text":" [遠距離]","color":"aqua"}]
scoreboard players add @s TotalKill 1
tellraw @s ["",{"text":"累計捕獲数: ","color":"aqua"},{"score":{"name":"@s","objective":"TotalKill"}}]
function system:main/totalkill_mes
function system:armor/hunter