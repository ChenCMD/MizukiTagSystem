function system:main/chunk_load/hsp
tp @s @e[sort=random,tag=HunterSpawnPoint,limit=1]
tag @a remove ItemGive
clear @s
scoreboard players set @s Health 300
scoreboard players set @s Winstroke 0
execute if entity @e[tag=SM,tag=!HideMode] as @s run function system:armor/hunter
tag @s add G.1001
function system:skill/branch/give
execute if entity @e[tag=SM,tag=!HalloweenEvent] run replaceitem entity @s hotbar.8 minecraft:slime_ball{HyperJump:1b,HideFlags:1,Enchantments:[{id:protection,lvl:1}],display:{Name:"\"§bハイパージャンプ\"",Lore:["{\"text\":\"§a持った状態でシフトで溜める\"}","{\"text\":\"§a溜め中は動くことが出来ない\"}","{\"text\":\"§a最大10m飛ぶことが出来る\"}"]}}
execute if entity @e[tag=SM,tag=HalloweenEvent] run replaceitem entity @s hotbar.8 minecraft:slime_ball{HyperJump:1b,HideFlags:1,Enchantments:[{id:protection,lvl:1}],display:{Name:"\"§bハイパージャンプ\"",Lore:["{\"text\":\"§a持った状態でシフトで溜める\"}","{\"text\":\"§a溜め中は動くことが出来ない\"}","{\"text\":\"§a最大§m10m§r§6§l18m§r§a飛ぶことが出来る\"}"]}}
execute if entity @e[tag=SM,tag=!NoSkillMode] run function system:skill/skill_set_once
give @s minecraft:arrow{display:{Name:"\"§5魔力\""}}
execute if entity @e[tag=SM,tag=HideMode] run effect give @s invisibility 999999 0 true
execute if entity @e[tag=SM,tag=HalloweenEvent] run effect give @s invisibility 999999 0 true
effect clear @s minecraft:weakness
effect clear @s minecraft:glowing
function system:main/effect
xp set @s 0 levels
scoreboard players reset @s Radar_Remaining
team join Hunter @s