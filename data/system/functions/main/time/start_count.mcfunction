
scoreboard players add @e[tag=SM] GameStartCount 1
execute if entity @e[tag=SM,scores={GameStartCount=100}] run title @a title {"text":"10","bold":true,"color":"green"}
execute if entity @e[tag=SM,scores={GameStartCount=100}] run playsound ui.button.click master @a ~ ~ ~ 1 1.0 1
execute if entity @e[tag=SM,scores={GameStartCount=200}] run title @a title {"text":"5","bold":true,"color":"green"}
execute if entity @e[tag=SM,scores={GameStartCount=200}] run playsound ui.button.click master @a ~ ~ ~ 1 1.0 1
execute if entity @e[tag=SM,scores={GameStartCount=220}] run title @a title {"text":"4","bold":true,"color":"green"}
execute if entity @e[tag=SM,scores={GameStartCount=220}] run playsound ui.button.click master @a ~ ~ ~ 1 1.0 1
execute if entity @e[tag=SM,scores={GameStartCount=240}] run title @a title {"text":"3","bold":true,"color":"green"}
execute if entity @e[tag=SM,scores={GameStartCount=240}] run playsound ui.button.click master @a ~ ~ ~ 1 1.0 1
execute if entity @e[tag=SM,scores={GameStartCount=260}] run title @a title {"text":"2","bold":true,"color":"green"}
execute if entity @e[tag=SM,scores={GameStartCount=260}] run playsound ui.button.click master @a ~ ~ ~ 1 1.0 1
execute if entity @e[tag=SM,scores={GameStartCount=280}] run title @a title {"text":"1","bold":true,"color":"green"}
execute if entity @e[tag=SM,scores={GameStartCount=280}] run playsound ui.button.click master @a ~ ~ ~ 1 1.0 1
execute if entity @e[tag=SM,scores={GameStartCount=300..}] run title @a title {"text":"START!!","bold":true,"color":"yellow"}
execute if entity @e[tag=SM,scores={GameStartCount=300..}] run playsound entity.wither.spawn master @a ~ ~ ~ 1 1.09 1
execute if entity @e[tag=SM,scores={GameStartCount=300..}] run playsound entity.elder_guardian.curse master @a ~ ~ ~ 1 0.53 1
execute if entity @e[tag=SM,scores={GameStartCount=300..}] run fill 1137 24 679 1137 25 678 air destroy
execute if entity @e[tag=SM,scores={GameStartCount=300..}] run fill 961 26 444 961 24 445 air destroy
tag @e[tag=SM,scores={GameStartCount=300..}] add GameTime_Yes
tag @e[tag=SM,scores={GameStartCount=300..}] add GameEndSystem_Confirm
tag @e[tag=SM,scores={GameStartCount=300..}] remove GameStartCount
scoreboard players set @e[tag=SM,scores={GameStartCount=300..}] GameStartCount 0