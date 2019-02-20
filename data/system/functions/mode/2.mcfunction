clear @s
scoreboard players set @s Health 300
scoreboard players set @s Winstroke 0
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},tag=!HideMode] as @s run function system:armor/hunter
give @s[scores={TotalKill=0..99}] minecraft:stick{isWeapon:1b,display:{Name:"\"§6警棒\""},HideFlags:61,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:1,Operation:0,UUIDLeast:310539,UUIDMost:26428,Slot:"mainhand"}]}
give @s[scores={TotalKill=100..}] minecraft:blaze_rod{isWeapon:1b,display:{Name:"\"§6警棒\"",Lore:["§e100人以上を捕まえた人のみが","§e扱える警棒","§e金色に輝いている..."]},HideFlags:61,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:1,Operation:0,UUIDLeast:310539,UUIDMost:26428,Slot:"mainhand"}],Enchantments:[{id:"sharpness",lvl:99}],HideFlags:1}
give @s minecraft:bow{Unbreakable:1,HideFlags:63,display:{Lore:["§a矢が戻ってこない場合弓を投げてください"]}}
give @s minecraft:arrow
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},tag=!NoSkillMode] run function system:skill/skill_set
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},tag=HideMode] run effect give @s invisibility 999999 0 true
effect clear @s minecraft:weakness
effect clear @s minecraft:glowing
function system:main/effect
xp set @s 0 levels
tp @s @e[sort=random,tag=HunterSpawnPoint,limit=1]
team join Hunter @s