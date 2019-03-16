execute if entity @e[distance=..6,type=item,nbt={Item:{tag:{MenuItem:1b}}},limit=1] store result score @e[tag=SM] Menu run data get entity @e[distance=..6,type=item,nbt={Item:{tag:{MenuItem:1b}}},limit=1] Item.tag.MenuID
execute if entity @e[tag=SM,limit=1,scores={Menu=-100..}] run playsound minecraft:ui.button.click master @a[distance=..6,sort=nearest,limit=1]
execute if entity @e[tag=SM,limit=1,scores={Menu=0}] run function system:menu/pattern/0
execute if entity @e[tag=SM,limit=1,scores={Menu=-1}] run function system:menu/pattern/1
execute if entity @e[tag=SM,limit=1,scores={Menu=-2}] run function system:menu/pattern/2
execute if entity @e[tag=SM,limit=1,scores={Menu=-3}] run function system:menu/pattern/3
execute if entity @e[tag=SM,limit=1,scores={Menu=-4}] run function system:menu/pattern/4

execute if entity @e[tag=SM,limit=1,scores={Menu=01..19}] run function system:menu/process-01-19
execute if entity @e[tag=SM,limit=1,scores={Menu=20..49}] run function system:menu/process-20-49
execute if entity @e[tag=SM,limit=1,scores={Menu=50..99}] run function system:menu/process-50-99
execute if entity @e[tag=SM,limit=1,scores={Menu=100..139}] run function system:menu/process-100-139

scoreboard players reset @e[tag=SM,scores={Menu=-100..}] Menu