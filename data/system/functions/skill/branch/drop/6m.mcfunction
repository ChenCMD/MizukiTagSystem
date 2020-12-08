tag @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}},nbt=!{Item:{tag:{display:{Name:"{\"text\":\"BlingEdit\"}"}}}},distance=..6,sort=nearest,limit=1] add TargetItem
execute if data entity @e[tag=TargetItem,sort=nearest,limit=1] {Item:{tag:{ItemID:1s}}} run function system:skill/escape/speed/use
execute if data entity @e[tag=TargetItem,sort=nearest,limit=1] {Item:{tag:{ItemID:2s}}} run function system:skill/escape/hide/use
execute if data entity @e[tag=TargetItem,sort=nearest,limit=1] {Item:{tag:{ItemID:3s}}} run function system:skill/escape/teleport/use
execute if data entity @e[tag=TargetItem,sort=nearest,limit=1] {Item:{tag:{ItemID:99s}}} run function system:skill/escape/taunt/use
execute if data entity @e[tag=TargetItem,sort=nearest,limit=1] {Item:{tag:{ItemID:101s}}} run function system:skill/hunter/gravity_arrow/use
execute if data entity @e[tag=TargetItem,sort=nearest,limit=1] {Item:{tag:{ItemID:102s}}} run function system:skill/hunter/chase_arrow/use
execute if data entity @e[tag=TargetItem,sort=nearest,limit=1] {Item:{tag:{ItemID:103s}}} run function system:skill/hunter/flash_search/use
execute if data entity @e[tag=TargetItem,sort=nearest,limit=1] {Item:{tag:{ItemID:104s}}} run function system:skill/hunter/flash_marking/use
execute if data entity @e[tag=TargetItem,sort=nearest,limit=1] {Item:{tag:{ItemID:105s}}} run function system:skill/hunter/trap/use
execute if data entity @e[tag=TargetItem,sort=nearest,limit=1] {Item:{tag:{ItemID:106s}}} run function system:skill/hunter/landmine/use
execute if data entity @e[tag=TargetItem,sort=nearest,limit=1] {Item:{tag:{ItemID:107s}}} run function system:skill/hunter/territory_totem/use
execute if data entity @e[tag=TargetItem,sort=nearest,limit=1] {Item:{tag:{ItemID:204s}}} run function system:dice/content_process/super_bomb/set
execute if data entity @e[tag=TargetItem,sort=nearest,limit=1] {Item:{tag:{ItemID:205s}}} run function system:dice/content_process/smoke/set
execute if data entity @e[tag=TargetItem,sort=nearest,limit=1] {Item:{tag:{ItemID:207s}}} run function system:dice/content_process/capture_net/set
execute if data entity @e[tag=TargetItem,sort=nearest,limit=1] {Item:{tag:{ItemID:208s}}} run function system:dice/content_process/instant_wall/set
execute if data entity @e[tag=TargetItem,sort=nearest,limit=1] {Item:{tag:{ItemID:209s}}} run function system:dice/content_process/stop_watch/act
execute if data entity @e[tag=TargetItem,sort=nearest,limit=1] {Item:{tag:{ItemID:210s}}} run function system:dice/content_process/milk_cake/act
execute if data entity @e[tag=TargetItem,sort=nearest,limit=1] {Item:{tag:{ItemID:501s}}} run function system:main/team_select/no
execute if data entity @e[tag=TargetItem,sort=nearest,limit=1] {Item:{tag:{ItemID:502s}}} run function system:main/team_select/yes
execute if data entity @e[tag=TargetItem,sort=nearest,limit=1] {Item:{tag:{ItemID:1031s}}} run function system:skill/escape/cookie/set

execute if data entity @e[tag=TargetItem,sort=nearest,limit=1] {Item:{tag:{ItemID:1s}}} run tag @s add G.001
execute if data entity @e[tag=TargetItem,sort=nearest,limit=1] {Item:{tag:{ItemID:2s}}} run tag @s add G.002
execute if data entity @e[tag=TargetItem,sort=nearest,limit=1] {Item:{tag:{ItemID:3s}}} run tag @s add G.003
execute if data entity @e[tag=TargetItem,sort=nearest,limit=1] {Item:{tag:{ItemID:101s}}} run tag @s add G.101
execute if data entity @e[tag=TargetItem,sort=nearest,limit=1] {Item:{tag:{ItemID:102s}}} run tag @s add G.102
execute if data entity @e[tag=TargetItem,sort=nearest,limit=1] {Item:{tag:{ItemID:103s}}} run tag @s add G.103
execute if data entity @e[tag=TargetItem,sort=nearest,limit=1] {Item:{tag:{ItemID:104s}}} run tag @s add G.104
execute if data entity @e[tag=TargetItem,sort=nearest,limit=1] {Item:{tag:{ItemID:105s}}} run tag @s add G.105
execute if data entity @e[tag=TargetItem,sort=nearest,limit=1] {Item:{tag:{ItemID:106s}}} run tag @s add G.106
execute if data entity @e[tag=TargetItem,sort=nearest,limit=1] {Item:{tag:{ItemID:107s}}} run tag @s add G.107
execute if data entity @e[tag=TargetItem,sort=nearest,limit=1] {Item:{tag:{ItemID:204s}}} run tag @s[tag=InfinityItem] add G.204
execute if data entity @e[tag=TargetItem,sort=nearest,limit=1] {Item:{tag:{ItemID:205s}}} run tag @s[tag=InfinityItem] add G.205
#
execute if data entity @e[tag=TargetItem,sort=nearest,limit=1] {Item:{tag:{ItemID:207s}}} run tag @s[tag=InfinityItem] add G.207
execute if data entity @e[tag=TargetItem,sort=nearest,limit=1] {Item:{tag:{ItemID:208s}}} run tag @s[tag=InfinityItem] add G.208
execute if data entity @e[tag=TargetItem,sort=nearest,limit=1] {Item:{tag:{ItemID:209s}}} run tag @s[tag=InfinityItem] add G.209
execute if data entity @e[tag=TargetItem,sort=nearest,limit=1] {Item:{tag:{ItemID:210s}}} run tag @s[tag=InfinityItem] add G.210
execute if data entity @e[tag=TargetItem,sort=nearest,limit=1] {Item:{tag:{ItemID:1001s}}} run tag @s add G.1001
execute if data entity @e[tag=TargetItem,sort=nearest,limit=1] {Item:{tag:{ItemID:1031s}}} run tag @s[tag=InfinityItem] add G.1031
execute if data entity @e[tag=TargetItem,sort=nearest,limit=1] {Item:{tag:{ItemID:1224s}}} run tag @s add G.1224s
kill @e[tag=TargetItem,sort=nearest,limit=1]