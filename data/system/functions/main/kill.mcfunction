tellraw @a ["",{"selector":"@s","color":"green"},{"text":" が ","color":"green"},{"selector":"@a[tag=Death]","color":"green"},{"text":" を捕まえた！","color":"green"}]
tellraw @s ["",{"text":"累計捕獲数: ","color":"aqua"},{"score":{"name":"@s","objective":"TotalKill"}}]
function system:main/totalkill_mes
function system:armor/hunter