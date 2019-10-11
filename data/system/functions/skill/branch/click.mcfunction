execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:1}}} run function system:skill/escape/speed/use
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:2}}} run function system:skill/escape/hide/use
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:3}}} run function system:skill/escape/teleport/use
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:99}}} run function system:skill/escape/taunt/use
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:101}}} run function system:skill/hunter/gravity_arrow/use
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:102}}} run function system:skill/hunter/chase_arrow/use
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:103}}} run function system:skill/hunter/flash_search/use
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:104}}} run function system:skill/hunter/flash_marking/use
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:105}}} run function system:skill/hunter/trap/use
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:106}}} run function system:skill/hunter/landmine/use
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:107}}} run function system:skill/hunter/territory_totem/use
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:204}}} run function system:dice/content_process/super_bomb/set
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{ItemID:204}}} run clear @s minecraft:carrot_on_a_stick{ItemID:204} 1
scoreboard players reset @s CarrotClick