execute if entity @e[tag=SM,scores={Menu=50}] run scoreboard players set @e[tag=SM] HunterCount 1
execute if entity @e[tag=SM,scores={Menu=51}] run scoreboard players set @e[tag=SM] HunterCount 2
execute if entity @e[tag=SM,scores={Menu=52}] run scoreboard players set @e[tag=SM] HunterCount 3
execute if entity @e[tag=SM,scores={Menu=53}] run scoreboard players set @e[tag=SM] HunterCount 4
execute if entity @e[tag=SM,scores={Menu=54}] run scoreboard players set @e[tag=SM] HunterCount 5
execute if entity @e[tag=SM,scores={Menu=55}] run scoreboard players set @e[tag=SM] HunterCount 6
execute if entity @e[tag=SM,scores={Menu=56}] run scoreboard players set @e[tag=SM] HunterCount 7
execute if entity @e[tag=SM,scores={Menu=57}] run scoreboard players set @e[tag=SM] HunterCount 8
execute if entity @e[tag=SM,scores={Menu=58}] run scoreboard players set @e[tag=SM] HunterCount 9
execute if entity @e[tag=SM,scores={Menu=59}] run scoreboard players set @e[tag=SM] HunterCount 10
execute if entity @e[tag=SM,scores={Menu=60}] run scoreboard players set @e[tag=SM] HunterCount 11
execute if entity @e[tag=SM,scores={Menu=61}] run scoreboard players set @e[tag=SM] HunterCount 12
execute if entity @e[tag=SM,scores={Menu=62}] run scoreboard players set @e[tag=SM] HunterCount 13
execute if entity @e[tag=SM,scores={Menu=63}] run scoreboard players set @e[tag=SM] HunterCount 14
execute if entity @e[tag=SM,scores={Menu=64}] run scoreboard players set @e[tag=SM] HunterCount 15
execute if entity @e[tag=SM,scores={Menu=65}] run scoreboard players set @e[tag=SM] HunterCount 16
execute if entity @e[tag=SM,scores={Menu=66}] run scoreboard players set @e[tag=SM] HunterCount 17
execute if entity @e[tag=SM,scores={Menu=67}] run scoreboard players set @e[tag=SM] HunterCount 18
execute if entity @e[tag=SM,scores={Menu=68}] run scoreboard players set @e[tag=SM] HunterCount 19
execute if entity @e[tag=SM,scores={Menu=69}] run scoreboard players set @e[tag=SM] HunterCount 20
execute if entity @e[tag=SM,scores={Menu=70}] run scoreboard players set @e[tag=SM] HunterCount 21
execute if entity @e[tag=SM,scores={Menu=71}] run scoreboard players set @e[tag=SM] HunterCount 22
execute if entity @e[tag=SM,scores={Menu=72}] run scoreboard players set @e[tag=SM] HunterCount 23
execute if entity @e[tag=SM,scores={Menu=73}] run scoreboard players set @e[tag=SM] HunterCount 24
execute if entity @e[tag=SM,scores={Menu=74}] run scoreboard players set @e[tag=SM] HunterCount 25
execute if entity @e[tag=SM,scores={Menu=75}] run scoreboard players set @e[tag=SM] HunterCount 26
execute if entity @e[tag=SM,scores={Menu=76}] run scoreboard players set @e[tag=SM] HunterCount 27
#execute if entity @e[tag=SM,scores={Menu=77}] run scoreboard players set @e[tag=SM]
#execute if entity @e[tag=SM,scores={Menu=78}] run scoreboard players set @e[tag=SM]
#execute if entity @e[tag=SM,scores={Menu=79}] run scoreboard players set @e[tag=SM]
execute if entity @e[tag=SM,scores={Menu=50..79}] run tellraw @a [{"text":"鬼人数を","color":"red"},{"score":{"name":"@e[tag=SM]","objective":"HunterCount"},"color":"red"},{"text":"人に設定しました","color":"red"}]
function system:menu/pattern/2