execute if entity @e[tag=SM,scores={END_COUNT=1,GameTimeB=10},limit=1] run title @a subtitle {"text":""}
execute if entity @e[tag=SM,scores={END_COUNT=1,GameTimeB=10},limit=1] run title @a title {"text":"10","bold":true,"color":"green"}
execute if entity @e[tag=SM,scores={END_COUNT=1,GameTimeB=10},limit=1] run playsound ui.button.click master @a ~ ~ ~ 1 1.0 1
execute if entity @e[tag=SM,scores={END_COUNT=1,GameTimeB=10},limit=1] run scoreboard players set @e[tag=SM] END_COUNT 2
execute if entity @e[tag=SM,scores={END_COUNT=2,GameTimeB=5},limit=1] run title @a subtitle {"text":""}
execute if entity @e[tag=SM,scores={END_COUNT=2,GameTimeB=5},limit=1] run title @a title {"text":"5","bold":true,"color":"green"}
execute if entity @e[tag=SM,scores={END_COUNT=2,GameTimeB=5},limit=1] run playsound ui.button.click master @a ~ ~ ~ 1 1.0 1
execute if entity @e[tag=SM,scores={END_COUNT=2,GameTimeB=5},limit=1] run scoreboard players set @e[tag=SM] END_COUNT 3
execute if entity @e[tag=SM,scores={END_COUNT=3,GameTimeB=4},limit=1] run title @a subtitle {"text":""}
execute if entity @e[tag=SM,scores={END_COUNT=3,GameTimeB=4},limit=1] run title @a title {"text":"4","bold":true,"color":"green"}
execute if entity @e[tag=SM,scores={END_COUNT=3,GameTimeB=4},limit=1] run playsound ui.button.click master @a ~ ~ ~ 1 1.0 1
execute if entity @e[tag=SM,scores={END_COUNT=3,GameTimeB=4},limit=1] run scoreboard players set @e[tag=SM] END_COUNT 4
execute if entity @e[tag=SM,scores={END_COUNT=4,GameTimeB=3},limit=1] run title @a subtitle {"text":""}
execute if entity @e[tag=SM,scores={END_COUNT=4,GameTimeB=3},limit=1] run title @a title {"text":"3","bold":true,"color":"green"}
execute if entity @e[tag=SM,scores={END_COUNT=4,GameTimeB=3},limit=1] run playsound ui.button.click master @a ~ ~ ~ 1 1.0 1
execute if entity @e[tag=SM,scores={END_COUNT=4,GameTimeB=3},limit=1] run scoreboard players set @e[tag=SM] END_COUNT 5
execute if entity @e[tag=SM,scores={END_COUNT=5,GameTimeB=2},limit=1] run title @a subtitle {"text":""}
execute if entity @e[tag=SM,scores={END_COUNT=5,GameTimeB=2},limit=1] run title @a title {"text":"2","bold":true,"color":"green"}
execute if entity @e[tag=SM,scores={END_COUNT=5,GameTimeB=2},limit=1] run playsound ui.button.click master @a ~ ~ ~ 1 1.0 1
execute if entity @e[tag=SM,scores={END_COUNT=5,GameTimeB=2},limit=1] run scoreboard players set @e[tag=SM] END_COUNT 6
execute if entity @e[tag=SM,scores={END_COUNT=6,GameTimeB=1},limit=1] run title @a subtitle {"text":""}
execute if entity @e[tag=SM,scores={END_COUNT=6,GameTimeB=1},limit=1] run title @a title {"text":"1","bold":true,"color":"green"}
execute if entity @e[tag=SM,scores={END_COUNT=6,GameTimeB=1},limit=1] run playsound ui.button.click master @a ~ ~ ~ 1 1.0 1
execute if entity @e[tag=SM,scores={END_COUNT=6,GameTimeB=1},limit=1] run scoreboard players set @e[tag=SM] END_COUNT 7