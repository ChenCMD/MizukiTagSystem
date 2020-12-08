
execute if entity @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}},distance=..2,sort=nearest,limit=1] run function system:skill/branch/drop/2m
execute if entity @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}},distance=..4,sort=nearest,limit=1] run function system:skill/branch/drop/4m
execute if entity @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}},distance=..6,sort=nearest,limit=1] run function system:skill/branch/drop/6m
execute if entity @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}},distance=..8,sort=nearest,limit=1] run function system:skill/branch/drop/8m
execute if entity @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}},distance=..10,sort=nearest,limit=1] run function system:skill/branch/drop/10m
tag @s add ItemGive
scoreboard players reset @s CarrotDrop