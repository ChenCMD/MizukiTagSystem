tellraw @a ["",{"selector":"@s","color":"green"},{"text":" >> ","color":"green"},{"selector":"@a[tag=SkillDeath]","color":"green"},{"text":" [スキル]","color":"red"}]
scoreboard players add @s TotalKill 1
tellraw @s ["",{"text":"累計捕獲数: ","color":"aqua"},{"score":{"name":"@s","objective":"TotalKill"}}]
function system:main/totalkill_mes
function system:armor/hunter
execute if entity @s[scores={TotalKill=100}] run clear @s stick
execute if entity @s[scores={TotalKill=100}] run give @s minecraft:blaze_rod{isWeapon:1b,display:{Name:"\"§6警棒\"",Lore:["§e100人以上を捕まえた人のみが","§e扱える警棒","§e金色に輝いている..."]},HideFlags:61,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:999,Operation:0,UUIDLeast:1,UUIDMost:1,Slot:"mainhand"},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:1,Operation:0,UUIDLeast:310539,UUIDMost:26428,Slot:"mainhand"}],Enchantments:[{id:"sharpness",lvl:99}],HideFlags:1}