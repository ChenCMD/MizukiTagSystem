#チェストクリア
data merge block ~ ~ ~0 {Items:[]}
data merge block ~ ~ ~1 {Items:[]}

#初期メニュー
execute if entity @e[tag=SM,scores={UseRuleSelect=1},tag=!NoSkillMode,tag=HideMode] run data merge block ~ ~ ~0 {Items:[{Slot:19b,id:"minecraft:iron_block",Count:1b,tag:{MenuID:11,MenuItem:1b,display:{Name:"[{\"text\":\"ルール\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§lノーマル\"}"]},HideFlags:1,Enchantments:[{id:protection,lvl:1s}]}},{Slot:20b,id:"minecraft:gold_block",Count:1b,tag:{MenuID:12,MenuItem:1b,display:{Name:"[{\"text\":\"ルール\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§l増え鬼\"}"]}}},{Slot:21b,id:"minecraft:diamond_block",Count:1b,tag:{MenuID:13,MenuItem:1b,display:{Name:"[{\"text\":\"ルール\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§l脱獄可\"}"]}}},{Slot:22b,id:"minecraft:emerald_block",Count:1b,tag:{MenuID:-1,MenuItem:1b,display:{Name:"[{\"text\":\"ルール\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§l§kループ鬼\"}"]}}},{Slot:25b,id:"minecraft:red_stained_glass_pane",Count:1b,tag:{MenuID:17,MenuItem:1b,display:{Name:"[{\"text\":\"ノースキルモード\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§c§lOFF\"}"]}}},{Slot:26b,id:"minecraft:lime_stained_glass_pane",Count:1b,tag:{MenuID:14,MenuItem:1b,display:{Name:"[{\"text\":\"アサシンモード\",\"color\":\"gray\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§lON\"}"]},HideFlags:1,Enchantments:[{id:protection,lvl:1s}]}}]}
execute if entity @e[tag=SM,scores={UseRuleSelect=1},tag=!NoSkillMode,tag=!HideMode] run data merge block ~ ~ ~0 {Items:[{Slot:19b,id:"minecraft:iron_block",Count:1b,tag:{MenuID:11,MenuItem:1b,display:{Name:"[{\"text\":\"ルール\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§lノーマル\"}"]},HideFlags:1,Enchantments:[{id:protection,lvl:1s}]}},{Slot:20b,id:"minecraft:gold_block",Count:1b,tag:{MenuID:12,MenuItem:1b,display:{Name:"[{\"text\":\"ルール\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§l増え鬼\"}"]}}},{Slot:21b,id:"minecraft:diamond_block",Count:1b,tag:{MenuID:13,MenuItem:1b,display:{Name:"[{\"text\":\"ルール\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§l脱獄可\"}"]}}},{Slot:22b,id:"minecraft:emerald_block",Count:1b,tag:{MenuID:-1,MenuItem:1b,display:{Name:"[{\"text\":\"ルール\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§l§kループ鬼\"}"]}}},{Slot:25b,id:"minecraft:red_stained_glass_pane",Count:1b,tag:{MenuID:17,MenuItem:1b,display:{Name:"[{\"text\":\"ノースキルモード\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§c§lOFF\"}"]}}},{Slot:26b,id:"minecraft:red_stained_glass_pane",Count:1b,tag:{MenuID:15,MenuItem:1b,display:{Name:"[{\"text\":\"アサシンモード\",\"color\":\"gray\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§c§lOFF\"}"]}}}]}
execute if entity @e[tag=SM,scores={UseRuleSelect=1},tag=NoSkillMode,tag=HideMode] run data merge block ~ ~ ~0 {Items:[{Slot:19b,id:"minecraft:iron_block",Count:1b,tag:{MenuID:11,MenuItem:1b,display:{Name:"[{\"text\":\"ルール\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§lノーマル\"}"]},HideFlags:1,Enchantments:[{id:protection,lvl:1s}]}},{Slot:20b,id:"minecraft:gold_block",Count:1b,tag:{MenuID:12,MenuItem:1b,display:{Name:"[{\"text\":\"ルール\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§l増え鬼\"}"]}}},{Slot:21b,id:"minecraft:diamond_block",Count:1b,tag:{MenuID:13,MenuItem:1b,display:{Name:"[{\"text\":\"ルール\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§l脱獄可\"}"]}}},{Slot:22b,id:"minecraft:emerald_block",Count:1b,tag:{MenuID:-1,MenuItem:1b,display:{Name:"[{\"text\":\"ルール\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§l§kループ鬼\"}"]}}},{Slot:25b,id:"minecraft:lime_stained_glass_pane",Count:1b,tag:{MenuID:16,MenuItem:1b,display:{Name:"[{\"text\":\"ノースキルモード\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§lON\"}"]},HideFlags:1,Enchantments:[{id:protection,lvl:1s}]}},{Slot:26b,id:"minecraft:lime_stained_glass_pane",Count:1b,tag:{MenuID:14,MenuItem:1b,display:{Name:"[{\"text\":\"アサシンモード\",\"color\":\"gray\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§lON\"}"]},HideFlags:1,Enchantments:[{id:protection,lvl:1s}]}}]}
execute if entity @e[tag=SM,scores={UseRuleSelect=1},tag=NoSkillMode,tag=!HideMode] run data merge block ~ ~ ~0 {Items:[{Slot:19b,id:"minecraft:iron_block",Count:1b,tag:{MenuID:11,MenuItem:1b,display:{Name:"[{\"text\":\"ルール\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§lノーマル\"}"]},HideFlags:1,Enchantments:[{id:protection,lvl:1s}]}},{Slot:20b,id:"minecraft:gold_block",Count:1b,tag:{MenuID:12,MenuItem:1b,display:{Name:"[{\"text\":\"ルール\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§l増え鬼\"}"]}}},{Slot:21b,id:"minecraft:diamond_block",Count:1b,tag:{MenuID:13,MenuItem:1b,display:{Name:"[{\"text\":\"ルール\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§l脱獄可\"}"]}}},{Slot:22b,id:"minecraft:emerald_block",Count:1b,tag:{MenuID:-1,MenuItem:1b,display:{Name:"[{\"text\":\"ルール\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§l§kループ鬼\"}"]}}},{Slot:25b,id:"minecraft:lime_stained_glass_pane",Count:1b,tag:{MenuID:16,MenuItem:1b,display:{Name:"[{\"text\":\"ノースキルモード\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§lON\"}"]},HideFlags:1,Enchantments:[{id:protection,lvl:1s}]}},{Slot:26b,id:"minecraft:red_stained_glass_pane",Count:1b,tag:{MenuID:15,MenuItem:1b,display:{Name:"[{\"text\":\"アサシンモード\",\"color\":\"gray\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§c§lOFF\"}"]}}}]}

execute if entity @e[tag=SM,scores={UseRuleSelect=2},tag=!NoSkillMode,tag=HideMode] run data merge block ~ ~ ~0 {Items:[{Slot:19b,id:"minecraft:iron_block",Count:1b,tag:{MenuID:11,MenuItem:1b,display:{Name:"[{\"text\":\"ルール\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§lノーマル\"}"]}}},{Slot:20b,id:"minecraft:gold_block",Count:1b,tag:{MenuID:12,MenuItem:1b,display:{Name:"[{\"text\":\"ルール\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§l増え鬼\"}"]},HideFlags:1,Enchantments:[{id:protection,lvl:1s}]}},{Slot:21b,id:"minecraft:diamond_block",Count:1b,tag:{MenuID:13,MenuItem:1b,display:{Name:"[{\"text\":\"ルール\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§l脱獄可\"}"]}}},{Slot:22b,id:"minecraft:emerald_block",Count:1b,tag:{MenuID:-1,MenuItem:1b,display:{Name:"[{\"text\":\"ルール\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§l§kループ鬼\"}"]}}},{Slot:25b,id:"minecraft:red_stained_glass_pane",Count:1b,tag:{MenuID:17,MenuItem:1b,display:{Name:"[{\"text\":\"ノースキルモード\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§c§lOFF\"}"]}}},{Slot:26b,id:"minecraft:lime_stained_glass_pane",Count:1b,tag:{MenuID:14,MenuItem:1b,display:{Name:"[{\"text\":\"アサシンモード\",\"color\":\"gray\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§lON\"}"]},HideFlags:1,Enchantments:[{id:protection,lvl:1s}]}}]}
execute if entity @e[tag=SM,scores={UseRuleSelect=2},tag=!NoSkillMode,tag=!HideMode] run data merge block ~ ~ ~0 {Items:[{Slot:19b,id:"minecraft:iron_block",Count:1b,tag:{MenuID:11,MenuItem:1b,display:{Name:"[{\"text\":\"ルール\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§lノーマル\"}"]}}},{Slot:20b,id:"minecraft:gold_block",Count:1b,tag:{MenuID:12,MenuItem:1b,display:{Name:"[{\"text\":\"ルール\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§l増え鬼\"}"]},HideFlags:1,Enchantments:[{id:protection,lvl:1s}]}},{Slot:21b,id:"minecraft:diamond_block",Count:1b,tag:{MenuID:13,MenuItem:1b,display:{Name:"[{\"text\":\"ルール\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§l脱獄可\"}"]}}},{Slot:22b,id:"minecraft:emerald_block",Count:1b,tag:{MenuID:-1,MenuItem:1b,display:{Name:"[{\"text\":\"ルール\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§l§kループ鬼\"}"]}}},{Slot:25b,id:"minecraft:red_stained_glass_pane",Count:1b,tag:{MenuID:17,MenuItem:1b,display:{Name:"[{\"text\":\"ノースキルモード\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§c§lOFF\"}"]}}},{Slot:26b,id:"minecraft:red_stained_glass_pane",Count:1b,tag:{MenuID:15,MenuItem:1b,display:{Name:"[{\"text\":\"アサシンモード\",\"color\":\"gray\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§c§lOFF\"}"]}}}]}
execute if entity @e[tag=SM,scores={UseRuleSelect=2},tag=NoSkillMode,tag=HideMode] run data merge block ~ ~ ~0 {Items:[{Slot:19b,id:"minecraft:iron_block",Count:1b,tag:{MenuID:11,MenuItem:1b,display:{Name:"[{\"text\":\"ルール\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§lノーマル\"}"]}}},{Slot:20b,id:"minecraft:gold_block",Count:1b,tag:{MenuID:12,MenuItem:1b,display:{Name:"[{\"text\":\"ルール\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§l増え鬼\"}"]},HideFlags:1,Enchantments:[{id:protection,lvl:1s}]}},{Slot:21b,id:"minecraft:diamond_block",Count:1b,tag:{MenuID:13,MenuItem:1b,display:{Name:"[{\"text\":\"ルール\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§l脱獄可\"}"]}}},{Slot:22b,id:"minecraft:emerald_block",Count:1b,tag:{MenuID:-1,MenuItem:1b,display:{Name:"[{\"text\":\"ルール\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§l§kループ鬼\"}"]}}},{Slot:25b,id:"minecraft:lime_stained_glass_pane",Count:1b,tag:{MenuID:16,MenuItem:1b,display:{Name:"[{\"text\":\"ノースキルモード\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§lON\"}"]},HideFlags:1,Enchantments:[{id:protection,lvl:1s}]}},{Slot:26b,id:"minecraft:lime_stained_glass_pane",Count:1b,tag:{MenuID:14,MenuItem:1b,display:{Name:"[{\"text\":\"アサシンモード\",\"color\":\"gray\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§lON\"}"]},HideFlags:1,Enchantments:[{id:protection,lvl:1s}]}}]}
execute if entity @e[tag=SM,scores={UseRuleSelect=2},tag=NoSkillMode,tag=!HideMode] run data merge block ~ ~ ~0 {Items:[{Slot:19b,id:"minecraft:iron_block",Count:1b,tag:{MenuID:11,MenuItem:1b,display:{Name:"[{\"text\":\"ルール\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§lノーマル\"}"]}}},{Slot:20b,id:"minecraft:gold_block",Count:1b,tag:{MenuID:12,MenuItem:1b,display:{Name:"[{\"text\":\"ルール\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§l増え鬼\"}"]},HideFlags:1,Enchantments:[{id:protection,lvl:1s}]}},{Slot:21b,id:"minecraft:diamond_block",Count:1b,tag:{MenuID:13,MenuItem:1b,display:{Name:"[{\"text\":\"ルール\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§l脱獄可\"}"]}}},{Slot:22b,id:"minecraft:emerald_block",Count:1b,tag:{MenuID:-1,MenuItem:1b,display:{Name:"[{\"text\":\"ルール\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§l§kループ鬼\"}"]}}},{Slot:25b,id:"minecraft:lime_stained_glass_pane",Count:1b,tag:{MenuID:16,MenuItem:1b,display:{Name:"[{\"text\":\"ノースキルモード\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§lON\"}"]},HideFlags:1,Enchantments:[{id:protection,lvl:1s}]}},{Slot:26b,id:"minecraft:red_stained_glass_pane",Count:1b,tag:{MenuID:15,MenuItem:1b,display:{Name:"[{\"text\":\"アサシンモード\",\"color\":\"gray\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§c§lOFF\"}"]}}}]}

execute if entity @e[tag=SM,scores={UseRuleSelect=3},tag=!NoSkillMode,tag=HideMode] run data merge block ~ ~ ~0 {Items:[{Slot:19b,id:"minecraft:iron_block",Count:1b,tag:{MenuID:11,MenuItem:1b,display:{Name:"[{\"text\":\"ルール\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§lノーマル\"}"]}}},{Slot:20b,id:"minecraft:gold_block",Count:1b,tag:{MenuID:12,MenuItem:1b,display:{Name:"[{\"text\":\"ルール\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§l増え鬼\"}"]}}},{Slot:21b,id:"minecraft:diamond_block",Count:1b,tag:{MenuID:13,MenuItem:1b,display:{Name:"[{\"text\":\"ルール\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§l脱獄可\"}"]},HideFlags:1,Enchantments:[{id:protection,lvl:1s}]}},{Slot:22b,id:"minecraft:emerald_block",Count:1b,tag:{MenuID:-1,MenuItem:1b,display:{Name:"[{\"text\":\"ルール\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§l§kループ鬼\"}"]}}},{Slot:25b,id:"minecraft:red_stained_glass_pane",Count:1b,tag:{MenuID:17,MenuItem:1b,display:{Name:"[{\"text\":\"ノースキルモード\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§c§lOFF\"}"]}}},{Slot:26b,id:"minecraft:lime_stained_glass_pane",Count:1b,tag:{MenuID:14,MenuItem:1b,display:{Name:"[{\"text\":\"アサシンモード\",\"color\":\"gray\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§lON\"}"]},HideFlags:1,Enchantments:[{id:protection,lvl:1s}]}}]}
execute if entity @e[tag=SM,scores={UseRuleSelect=3},tag=!NoSkillMode,tag=!HideMode] run data merge block ~ ~ ~0 {Items:[{Slot:19b,id:"minecraft:iron_block",Count:1b,tag:{MenuID:11,MenuItem:1b,display:{Name:"[{\"text\":\"ルール\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§lノーマル\"}"]}}},{Slot:20b,id:"minecraft:gold_block",Count:1b,tag:{MenuID:12,MenuItem:1b,display:{Name:"[{\"text\":\"ルール\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§l増え鬼\"}"]}}},{Slot:21b,id:"minecraft:diamond_block",Count:1b,tag:{MenuID:13,MenuItem:1b,display:{Name:"[{\"text\":\"ルール\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§l脱獄可\"}"]},HideFlags:1,Enchantments:[{id:protection,lvl:1s}]}},{Slot:22b,id:"minecraft:emerald_block",Count:1b,tag:{MenuID:-1,MenuItem:1b,display:{Name:"[{\"text\":\"ルール\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§l§kループ鬼\"}"]}}},{Slot:25b,id:"minecraft:red_stained_glass_pane",Count:1b,tag:{MenuID:17,MenuItem:1b,display:{Name:"[{\"text\":\"ノースキルモード\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§c§lOFF\"}"]}}},{Slot:26b,id:"minecraft:red_stained_glass_pane",Count:1b,tag:{MenuID:15,MenuItem:1b,display:{Name:"[{\"text\":\"アサシンモード\",\"color\":\"gray\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§c§lOFF\"}"]}}}]}
execute if entity @e[tag=SM,scores={UseRuleSelect=3},tag=NoSkillMode,tag=HideMode] run data merge block ~ ~ ~0 {Items:[{Slot:19b,id:"minecraft:iron_block",Count:1b,tag:{MenuID:11,MenuItem:1b,display:{Name:"[{\"text\":\"ルール\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§lノーマル\"}"]}}},{Slot:20b,id:"minecraft:gold_block",Count:1b,tag:{MenuID:12,MenuItem:1b,display:{Name:"[{\"text\":\"ルール\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§l増え鬼\"}"]}}},{Slot:21b,id:"minecraft:diamond_block",Count:1b,tag:{MenuID:13,MenuItem:1b,display:{Name:"[{\"text\":\"ルール\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§l脱獄可\"}"]},HideFlags:1,Enchantments:[{id:protection,lvl:1s}]}},{Slot:22b,id:"minecraft:emerald_block",Count:1b,tag:{MenuID:-1,MenuItem:1b,display:{Name:"[{\"text\":\"ルール\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§l§kループ鬼\"}"]}}},{Slot:25b,id:"minecraft:lime_stained_glass_pane",Count:1b,tag:{MenuID:16,MenuItem:1b,display:{Name:"[{\"text\":\"ノースキルモード\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§lON\"}"]},HideFlags:1,Enchantments:[{id:protection,lvl:1s}]}},{Slot:26b,id:"minecraft:lime_stained_glass_pane",Count:1b,tag:{MenuID:14,MenuItem:1b,display:{Name:"[{\"text\":\"アサシンモード\",\"color\":\"gray\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§lON\"}"]},HideFlags:1,Enchantments:[{id:protection,lvl:1s}]}}]}
execute if entity @e[tag=SM,scores={UseRuleSelect=3},tag=NoSkillMode,tag=!HideMode] run data merge block ~ ~ ~0 {Items:[{Slot:19b,id:"minecraft:iron_block",Count:1b,tag:{MenuID:11,MenuItem:1b,display:{Name:"[{\"text\":\"ルール\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§lノーマル\"}"]}}},{Slot:20b,id:"minecraft:gold_block",Count:1b,tag:{MenuID:12,MenuItem:1b,display:{Name:"[{\"text\":\"ルール\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§l増え鬼\"}"]}}},{Slot:21b,id:"minecraft:diamond_block",Count:1b,tag:{MenuID:13,MenuItem:1b,display:{Name:"[{\"text\":\"ルール\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§l脱獄可\"}"]},HideFlags:1,Enchantments:[{id:protection,lvl:1s}]}},{Slot:22b,id:"minecraft:emerald_block",Count:1b,tag:{MenuID:-1,MenuItem:1b,display:{Name:"[{\"text\":\"ルール\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§l§kループ鬼\"}"]}}},{Slot:25b,id:"minecraft:lime_stained_glass_pane",Count:1b,tag:{MenuID:16,MenuItem:1b,display:{Name:"[{\"text\":\"ノースキルモード\",\"color\":\"aqua\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§lON\"}"]},HideFlags:1,Enchantments:[{id:protection,lvl:1s}]}},{Slot:26b,id:"minecraft:red_stained_glass_pane",Count:1b,tag:{MenuID:15,MenuItem:1b,display:{Name:"[{\"text\":\"アサシンモード\",\"color\":\"gray\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§c§lOFF\"}"]}}}]}

execute if entity @e[tag=SM,tag=!NoHealthRegen,tag=NoLoD] run data merge block ~ ~ ~1 {Items:[{Slot:7b,id:"minecraft:red_stained_glass_pane",Count:1b,tag:{MenuID:135,MenuItem:1b,display:{Name:"[{\"text\":\"Luck of Dice\",\"color\":\"light_purple\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§c§lOFF\"}"]}}},{Slot:8b,id:"minecraft:red_stained_glass_pane",Count:1b,tag:{MenuID:133,MenuItem:1b,display:{Name:"[{\"text\":\"体力自然回復\",\"color\":\"light_purple\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§c§lOFF\"}"]}}},{Slot:18b,id:"minecraft:arrow",Count:1b,tag:{MenuID:0,MenuItem:1b,display:{Name:"[{\"text\":\"メインメニューに戻る\",\"color\":\"yellow\",\"bold\":true,\"italic\":false}]"}}}]}
execute if entity @e[tag=SM,tag=NoHealthRegen,tag=NoLoD] run data merge block ~ ~ ~1 {Items:[{Slot:7b,id:"minecraft:red_stained_glass_pane",Count:1b,tag:{MenuID:135,MenuItem:1b,display:{Name:"[{\"text\":\"Luck of Dice\",\"color\":\"light_purple\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§c§lOFF\"}"]}}},{Slot:8b,id:"minecraft:lime_stained_glass_pane",Count:1b,tag:{MenuID:132,MenuItem:1b,display:{Name:"[{\"text\":\"体力自然回復\",\"color\":\"light_purple\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§lON\"}"]},HideFlags:1,Enchantments:[{id:protection,lvl:1s}]}},{Slot:18b,id:"minecraft:arrow",Count:1b,tag:{MenuID:0,MenuItem:1b,display:{Name:"[{\"text\":\"メインメニューに戻る\",\"color\":\"yellow\",\"bold\":true,\"italic\":false}]"}}}]}
execute if entity @e[tag=SM,tag=!NoHealthRegen,tag=!NoLoD] run data merge block ~ ~ ~1 {Items:[{Slot:7b,id:"minecraft:lime_stained_glass_pane",Count:1b,tag:{MenuID:134,MenuItem:1b,display:{Name:"[{\"text\":\"Luck of Dice\",\"color\":\"light_purple\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§lON\"}"]},HideFlags:1,Enchantments:[{id:protection,lvl:1s}]}},{Slot:8b,id:"minecraft:red_stained_glass_pane",Count:1b,tag:{MenuID:133,MenuItem:1b,display:{Name:"[{\"text\":\"体力自然回復\",\"color\":\"light_purple\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§c§lOFF\"}"]}}},{Slot:18b,id:"minecraft:arrow",Count:1b,tag:{MenuID:0,MenuItem:1b,display:{Name:"[{\"text\":\"メインメニューに戻る\",\"color\":\"yellow\",\"bold\":true,\"italic\":false}]"}}}]}
execute if entity @e[tag=SM,tag=NoHealthRegen,tag=!NoLoD] run data merge block ~ ~ ~1 {Items:[{Slot:7b,id:"minecraft:lime_stained_glass_pane",Count:1b,tag:{MenuID:134,MenuItem:1b,display:{Name:"[{\"text\":\"Luck of Dice\",\"color\":\"light_purple\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§lON\"}"]},HideFlags:1,Enchantments:[{id:protection,lvl:1s}]}},{Slot:8b,id:"minecraft:lime_stained_glass_pane",Count:1b,tag:{MenuID:132,MenuItem:1b,display:{Name:"[{\"text\":\"体力自然回復\",\"color\":\"light_purple\",\"bold\":true,\"italic\":false},{\"text\":\":\",\"color\":\"white\",\"bold\":false,\"italic\":false}]",Lore:["{\"text\":\"§a§lON\"}"]},HideFlags:1,Enchantments:[{id:protection,lvl:1s}]}},{Slot:18b,id:"minecraft:arrow",Count:1b,tag:{MenuID:0,MenuItem:1b,display:{Name:"[{\"text\":\"メインメニューに戻る\",\"color\":\"yellow\",\"bold\":true,\"italic\":false}]"}}}]}
