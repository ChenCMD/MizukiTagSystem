execute if entity @e[tag=SM,scores={Menu=1}] run function system:main/startitem
execute if entity @e[tag=SM,scores={Menu=1}] run function system:menu/pattern/0

execute if entity @e[tag=SM,scores={Menu=3}] run scoreboard players set @e[tag=SM] HunterCount 1
execute if entity @e[tag=SM,scores={Menu=4}] run scoreboard players set @e[tag=SM] HunterCount 2
execute if entity @e[tag=SM,scores={Menu=5}] run scoreboard players set @e[tag=SM] HunterCount 3
execute if entity @e[tag=SM,scores={Menu=6}] run scoreboard players set @e[tag=SM] HunterCount 4
execute if entity @e[tag=SM,scores={Menu=7}] run scoreboard players set @e[tag=SM] HunterCount 5
execute if entity @e[tag=SM,scores={Menu=8}] run scoreboard players set @e[tag=SM] HunterCount 6
execute if entity @e[tag=SM,scores={Menu=9}] run scoreboard players set @e[tag=SM] HunterCount 7
execute if entity @e[tag=SM,scores={Menu=3..9}] run tellraw @a [{"text":"鬼人数を","color":"red"},{"score":{"name":"@e[tag=SM]","objective":"HunterCount"},"color":"red"},{"text":"人に設定しました","color":"red"}]
execute if entity @e[tag=SM,scores={Menu=3..9}] run function system:menu/pattern/2

execute if entity @e[tag=SM,scores={Menu=11}] run scoreboard players set @e[tag=SM] UseRuleSelect 1
execute if entity @e[tag=SM,scores={Menu=11}] run tellraw @a [{"text":"ゲームルールを","color":"green"},{"text":"鬼ごっこ(ノーマル)","color":"aqua"},{"text":"に設定しました","color":"green"}]
execute if entity @e[tag=SM,scores={Menu=12}] run scoreboard players set @e[tag=SM] UseRuleSelect 2
execute if entity @e[tag=SM,scores={Menu=12}] run tellraw @a [{"text":"ゲームルールを","color":"green"},{"text":"鬼ごっこ(増え鬼)","color":"gold"},{"text":"に設定しました","color":"green"}]
#execute if entity @e[tag=SM,scores={Menu=12}] run tellraw @a [{"text":"[エラー] 現在 増え鬼は設定出来ません","color":"red"}]
execute if entity @e[tag=SM,scores={Menu=13}] run scoreboard players set @e[tag=SM] UseRuleSelect 3
execute if entity @e[tag=SM,scores={Menu=13}] run tellraw @a [{"text":"ゲームルールを","color":"green"},{"text":"鬼ごっこ(脱獄可)","color":"red"},{"text":"に設定しました","color":"green"}]

execute if entity @e[tag=SM,scores={Menu=14}] run tag @e[tag=SM] remove HideMode
execute if entity @e[tag=SM,scores={Menu=14}] run tellraw @a [{"text":"アサシンモードを無効にしました","color":"red"}]
execute if entity @e[tag=SM,scores={Menu=15}] run tag @e[tag=SM] add HideMode
execute if entity @e[tag=SM,scores={Menu=15}] run tellraw @a [{"text":"アサシンモードを有効にしました","color":"green"}]
execute if entity @e[tag=SM,scores={Menu=16}] run tag @e[tag=SM] remove NoSkillMode
execute if entity @e[tag=SM,scores={Menu=16}] run tellraw @a [{"text":"ノースキルモードを無効にしました","color":"red"}]
execute if entity @e[tag=SM,scores={Menu=17}] run tag @e[tag=SM] add NoSkillMode
execute if entity @e[tag=SM,scores={Menu=17}] run tellraw @a [{"text":"ノースキルモードを有効にしました","color":"green"}]
execute if entity @e[tag=SM,scores={Menu=11..17}] run function system:menu/pattern/1


execute if entity @e[tag=SM,scores={Menu=19}] as @e[tag=MenuPos] run tellraw @a[distance=..6,sort=nearest,limit=1] ["",{"text":"この設定でゲームを始めますか？ ","color":"green"},{"text":">>スタート<<","color":"gold","clickEvent":{"action":"run_command","value":"/execute as @e[tag=SM,tag=!GameStartCount] run function system:main/start"}},{"text":"\n"},{"text":"ゲーム時間","color":"green"},{"text":" : "},{"score":{"name":"@e[tag=SM]","objective":"GameMinutes"},"color":"light_purple"},{"text":"分","color":"green"},{"text":"\n"},{"text":"鬼人数","color":"green"},{"text":" : "},{"score":{"name":"@e[tag=SM]","objective":"HunterCount"},"color":"light_purple"},{"text":"人","color":"green"}]
execute if entity @e[tag=SM,scores={Menu=19}] run function system:menu/pattern/0