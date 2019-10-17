execute if data entity @e[sort=nearest,distance=..4,limit=1,type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] {Item:{tag:{ItemID:1}}} run function system:skill/escape/speed/use
execute if data entity @e[sort=nearest,distance=..4,limit=1,type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] {Item:{tag:{ItemID:2}}} run function system:skill/escape/hide/use
execute if data entity @e[sort=nearest,distance=..4,limit=1,type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] {Item:{tag:{ItemID:3}}} run function system:skill/escape/teleport/use
execute if data entity @e[sort=nearest,distance=..4,limit=1,type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] {Item:{tag:{ItemID:99}}} run function system:skill/escape/taunt/use
execute if data entity @e[sort=nearest,distance=..4,limit=1,type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] {Item:{tag:{ItemID:101}}} run function system:skill/hunter/gravity_arrow/use
execute if data entity @e[sort=nearest,distance=..4,limit=1,type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] {Item:{tag:{ItemID:102}}} run function system:skill/hunter/chase_arrow/use
execute if data entity @e[sort=nearest,distance=..4,limit=1,type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] {Item:{tag:{ItemID:103}}} run function system:skill/hunter/flash_search/use
execute if data entity @e[sort=nearest,distance=..4,limit=1,type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] {Item:{tag:{ItemID:104}}} run function system:skill/hunter/flash_marking/use
execute if data entity @e[sort=nearest,distance=..4,limit=1,type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] {Item:{tag:{ItemID:105}}} run function system:skill/hunter/trap/use
execute if data entity @e[sort=nearest,distance=..4,limit=1,type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] {Item:{tag:{ItemID:106}}} run function system:skill/hunter/landmine/use
execute if data entity @e[sort=nearest,distance=..4,limit=1,type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] {Item:{tag:{ItemID:107}}} run function system:skill/hunter/territory_totem/use
execute if data entity @e[sort=nearest,distance=..4,limit=1,type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] {Item:{tag:{ItemID:204}}} run function system:dice/content_process/super_bomb/set
execute if data entity @e[sort=nearest,distance=..4,limit=1,type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] {Item:{tag:{ItemID:205}}} run function system:dice/content_process/smoke/set
execute if data entity @e[sort=nearest,distance=..4,limit=1,type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] {Item:{tag:{ItemID:207}}} run function system:dice/content_process/capture_net/set
execute if data entity @e[sort=nearest,distance=..4,limit=1,type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] {Item:{tag:{ItemID:208}}} run function system:dice/content_process/instant_wall/set
execute if data entity @e[sort=nearest,distance=..4,limit=1,type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] {Item:{tag:{ItemID:209}}} run function system:dice/content_process/stop_watch/act
execute if data entity @e[sort=nearest,distance=..4,limit=1,type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] {Item:{tag:{ItemID:210}}} run function system:dice/content_process/milk_cake/act

execute if data entity @e[sort=nearest,distance=..4,limit=1,type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] {Item:{tag:{ItemID:1}}} run tag @s add G.001
execute if data entity @e[sort=nearest,distance=..4,limit=1,type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] {Item:{tag:{ItemID:2}}} run tag @s add G.002
execute if data entity @e[sort=nearest,distance=..4,limit=1,type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] {Item:{tag:{ItemID:3}}} run tag @s add G.003
execute if data entity @e[sort=nearest,distance=..4,limit=1,type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] {Item:{tag:{ItemID:101}}} run tag @s add G.101
execute if data entity @e[sort=nearest,distance=..4,limit=1,type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] {Item:{tag:{ItemID:102}}} run tag @s add G.102
execute if data entity @e[sort=nearest,distance=..4,limit=1,type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] {Item:{tag:{ItemID:103}}} run tag @s add G.103
execute if data entity @e[sort=nearest,distance=..4,limit=1,type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] {Item:{tag:{ItemID:104}}} run tag @s add G.104
execute if data entity @e[sort=nearest,distance=..4,limit=1,type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] {Item:{tag:{ItemID:105}}} run tag @s add G.105
execute if data entity @e[sort=nearest,distance=..4,limit=1,type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] {Item:{tag:{ItemID:106}}} run tag @s add G.106
execute if data entity @e[sort=nearest,distance=..4,limit=1,type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] {Item:{tag:{ItemID:107}}} run tag @s add G.107
execute if data entity @e[sort=nearest,distance=..4,limit=1,type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] {Item:{tag:{ItemID:204}}} run tag @s[tag=InfinityItem] add G.204
execute if data entity @e[sort=nearest,distance=..4,limit=1,type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] {Item:{tag:{ItemID:205}}} run tag @s[tag=InfinityItem] add G.205
#
execute if data entity @e[sort=nearest,distance=..4,limit=1,type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] {Item:{tag:{ItemID:207}}} run tag @s[tag=InfinityItem] add G.207
execute if data entity @e[sort=nearest,distance=..4,limit=1,type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] {Item:{tag:{ItemID:208}}} run tag @s[tag=InfinityItem] add G.208
execute if data entity @e[sort=nearest,distance=..4,limit=1,type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] {Item:{tag:{ItemID:209}}} run tag @s[tag=InfinityItem] add G.209
execute if data entity @e[sort=nearest,distance=..4,limit=1,type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] {Item:{tag:{ItemID:210}}} run tag @s[tag=InfinityItem] add G.210
execute unless entity @e[sort=nearest,distance=..4,limit=1,type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] run tellraw @a[tag=OP] [{"text":"[DEBUG]","color":"dark_aqua"},{"text":" Items that can be referenced does not exist","color":"red"},{"text":"\nPlayer ","color":"dark_aqua"},{"selector":"@s"}]
tag @s add ItemGive
#DEBUG
scoreboard players reset @s CarrotDrop