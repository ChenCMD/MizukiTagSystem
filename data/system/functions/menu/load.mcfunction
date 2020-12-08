execute if entity @e[type=item,nbt={Item:{tag:{MenuItem:1b}}},distance=..6,limit=1] store result score @e[tag=SM] Menu run data get entity @e[type=item,nbt={Item:{tag:{MenuItem:1b}}},distance=..6,limit=1] Item.tag.MenuID
execute if entity @e[tag=SM,scores={Menu=-100..},limit=1] run playsound minecraft:ui.button.click master @a[distance=..6,sort=nearest,limit=1]
execute if entity @e[tag=SM,scores={Menu=0},limit=1] run function system:menu/pattern/0
execute if entity @e[tag=SM,scores={Menu=-1},limit=1] run function system:menu/pattern/1
execute if entity @e[tag=SM,scores={Menu=-2},limit=1] run function system:menu/pattern/2
execute if entity @e[tag=SM,scores={Menu=-3},limit=1] run function system:menu/pattern/3
execute if entity @e[tag=SM,scores={Menu=-4},limit=1] run function system:menu/pattern/4
execute if entity @e[tag=SM,scores={Menu=-5},limit=1] run function system:menu/pattern/5

execute if entity @e[tag=SM,scores={Menu=01..19},limit=1] run function system:menu/process-01-19
execute if entity @e[tag=SM,scores={Menu=20..49},limit=1] run function system:menu/process-20-49
execute if entity @e[tag=SM,scores={Menu=50..99},limit=1] run function system:menu/process-50-99
execute if entity @e[tag=SM,scores={Menu=100..139},limit=1] run function system:menu/process-100-139
execute if entity @e[tag=SM,scores={Menu=140..199},limit=1] run function system:menu/process-140-199

scoreboard players reset @e[tag=SM,scores={Menu=-100..}] Menu