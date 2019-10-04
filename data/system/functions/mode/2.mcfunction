clear @s
scoreboard players set @s Health 300
scoreboard players set @s Winstroke 0
execute if entity @e[tag=SM,tag=!HideMode] as @s run function system:armor/hunter
give @s[scores={TotalKill=0..99}] minecraft:stick{isWeapon:1b,display:{Name:"\"§6警棒\""},HideFlags:61,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:1,Operation:0,UUIDLeast:310539,UUIDMost:26428,Slot:"mainhand"}]}
give @s[scores={TotalKill=100..}] minecraft:blaze_rod{isWeapon:1b,display:{Name:"\"§6警棒\"",Lore:["{\"text\":\"§e100人以上を捕まえた人のみが\"}","{\"text\":\"§e扱える警棒\"}","{\"text\":\"§e金色に輝いている...\"}"]},HideFlags:61,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:1,Operation:0,UUIDLeast:310539,UUIDMost:26428,Slot:"mainhand"}],Enchantments:[{id:"sharpness",lvl:99}],HideFlags:1}
replaceitem entity @s hotbar.8 minecraft:slime_ball{HyperJump:1b,HideFlags:1,Enchantments:[{id:protection,lvl:1}],display:{Name:"\"§bハイパージャンプ\"",Lore:["{\"text\":\"§a持った状態でシフトで溜める\"}","{\"text\":\"§a溜め中は動くことが出来ない\"}","{\"text\":\"§a最大10m飛ぶことが出来る\"}"]}}
give @s minecraft:bow{Unbreakable:1,HideFlags:63,display:{Lore:["{\"text\":\"§a矢が戻ってこない場合弓を投げてください\"}"]}}
give @s minecraft:arrow
execute if entity @e[tag=SM,tag=!NoSkillMode] run function system:skill/skill_set_once
execute if entity @e[tag=SM,tag=HideMode] run effect give @s invisibility 999999 0 true
effect clear @s minecraft:weakness
effect clear @s minecraft:glowing
function system:main/effect
xp set @s 0 levels
scoreboard players reset @s Radar_Remaining
tp @s @e[sort=random,tag=HunterSpawnPoint,limit=1]
team join Hunter @s