execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:1s}}} run function system:skill/escape/speed/use
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:2s}}} run function system:skill/escape/hide/use
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:3s}}} run function system:skill/escape/teleport/use
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:99s}}} run function system:skill/escape/taunt/use
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:99s}}} run clear @s minecraft:carrot_on_a_stick{ItemID:99s} 1
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:101s}}} run function system:skill/hunter/gravity_arrow/use
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:102s}}} run function system:skill/hunter/chase_arrow/use
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:103s}}} run function system:skill/hunter/flash_search/use
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:104s}}} run function system:skill/hunter/flash_marking/use
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:105s}}} run function system:skill/hunter/trap/use
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:106s}}} run function system:skill/hunter/landmine/use
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:107s}}} run function system:skill/hunter/territory_totem/use
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:204s}}} run function system:dice/content_process/super_bomb/set
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:204s}}} run clear @s[tag=!InfinityItem] minecraft:carrot_on_a_stick{ItemID:204s} 1
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:205s}}} run function system:dice/content_process/smoke/set
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:205s}}} run clear @s[tag=!InfinityItem] minecraft:carrot_on_a_stick{ItemID:205s} 1
#
#
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:207s}}} run function system:dice/content_process/capture_net/set
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:207s}}} run clear @s[tag=!InfinityItem] minecraft:carrot_on_a_stick{ItemID:207s} 1
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:208s}}} run function system:dice/content_process/instant_wall/set
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:208s}}} run clear @s[tag=!InfinityItem] minecraft:carrot_on_a_stick{ItemID:208s} 1
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:209s}}} run function system:dice/content_process/stop_watch/act
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:209s}}} run clear @s[tag=!InfinityItem] minecraft:carrot_on_a_stick{ItemID:209s} 1
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:210s}}} run function system:dice/content_process/milk_cake/act
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:210s}}} run clear @s[tag=!InfinityItem] minecraft:carrot_on_a_stick{ItemID:210s} 1
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:501s}}} run function system:main/team_select/no
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:501s}}} run clear @s minecraft:carrot_on_a_stick{ItemID:501s} 1
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:502s}}} run function system:main/team_select/yes
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:502s}}} run clear @s minecraft:carrot_on_a_stick{ItemID:502s} 1
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:1031s}}} run function system:skill/escape/cookie/set
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:1031s}}} run clear @s minecraft:carrot_on_a_stick{ItemID:1031s} 1
scoreboard players reset @s CarrotClick