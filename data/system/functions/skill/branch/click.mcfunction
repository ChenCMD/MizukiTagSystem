execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:1}}} run function system:skill/escape/speed/use
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:2}}} run function system:skill/escape/hide/use
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:3}}} run function system:skill/escape/teleport/use
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:99}}} run function system:skill/escape/taunt/use
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:99}}} run clear @s minecraft:carrot_on_a_stick{ItemID:99} 1
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:101}}} run function system:skill/hunter/gravity_arrow/use
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:102}}} run function system:skill/hunter/chase_arrow/use
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:103}}} run function system:skill/hunter/flash_search/use
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:104}}} run function system:skill/hunter/flash_marking/use
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:105}}} run function system:skill/hunter/trap/use
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:106}}} run function system:skill/hunter/landmine/use
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:107}}} run function system:skill/hunter/territory_totem/use
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:204}}} run function system:dice/content_process/super_bomb/set
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:204}}} run clear @s minecraft:carrot_on_a_stick{ItemID:204} 1
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:205}}} run function system:dice/content_process/smoke/set
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:205}}} run clear @s minecraft:carrot_on_a_stick{ItemID:205} 1
#
#
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:207}}} run function system:dice/content_process/capture_net/set
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:207}}} run clear @s minecraft:carrot_on_a_stick{ItemID:207} 1
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:208}}} run function system:dice/content_process/instant_wall/set
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:208}}} run clear @s minecraft:carrot_on_a_stick{ItemID:208} 1
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:209}}} run function system:dice/content_process/stop_watch/act
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:209}}} run clear @s minecraft:carrot_on_a_stick{ItemID:209} 1
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:210}}} run function system:dice/content_process/milk_cake/act
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:210}}} run clear @s minecraft:carrot_on_a_stick{ItemID:210} 1
scoreboard players reset @s CarrotClick