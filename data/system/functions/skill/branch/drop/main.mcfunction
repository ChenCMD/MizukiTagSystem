
execute if entity @e[sort=nearest,distance=..2,limit=1,type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] run function system:skill/branch/drop/2m
execute if entity @e[sort=nearest,distance=..4,limit=1,type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] run function system:skill/branch/drop/4m
execute if entity @e[sort=nearest,distance=..6,limit=1,type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] run function system:skill/branch/drop/6m
execute if entity @e[sort=nearest,distance=..8,limit=1,type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] run function system:skill/branch/drop/8m
execute if entity @e[sort=nearest,distance=..10,limit=1,type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] run function system:skill/branch/drop/10m
tag @s add ItemGive
scoreboard players reset @s CarrotDrop