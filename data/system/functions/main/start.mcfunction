#アイテムclear
clear @a minecraft:gravel
clear @a minecraft:barrier
clear @a minecraft:lime_wool
clear @a minecraft:diamond
clear @a minecraft:emerald
#時間関連の設定
scoreboard players operation @s GameTimeB = @s GameTimeC
execute store result bossbar mizuki:time/mode1 max run scoreboard players get @s GameTimeC
execute store result bossbar mizuki:time/mode2 max run scoreboard players get @s GameTimeC
execute store result bossbar mizuki:time/mode3 max run scoreboard players get @s GameTimeC
execute if entity @s[scores={UseRuleSelect=1}] run bossbar set mizuki:time/mode1 players @a
execute if entity @s[scores={UseRuleSelect=2}] run bossbar set mizuki:time/mode2 players @a
execute if entity @s[scores={UseRuleSelect=3}] run bossbar set mizuki:time/mode3 players @a
scoreboard players set @s END_COUNT 1
#参加者にタグ付与
tag @a[gamemode=!spectator,team=!OP] add GamePlayer
#ゲーム回数をプレイヤーにコピー
scoreboard players operation @a GameCount = @s GameCount
#ゲームモード変更
gamemode adventure @a[gamemode=!spectator,team=!OP]
#全員逃走者join
team join Escape @a[gamemode=!spectator,team=!OP]
#鬼決め
scoreboard players operation $HunterCountCopy HunterCount = @s HunterCount
function system:main/join_hunter
#逃走者弱体化付与
effect give @a[team=Escape] minecraft:weakness 999999 99 true
effect give @a[team=Escape] minecraft:resistance 999999 4 true
effect give @a minecraft:saturation 999999 0 true
#逃走者スキルアイテムGive
execute if entity @s[tag=!NoSkillMode] run tag @a[team=Escape] add SpeedRemove
execute if entity @s[tag=!NoSkillMode] run tag @a[team=Escape] add HideRemove
execute if entity @s[tag=!NoSkillMode] run tag @a[team=Escape] add TeleportRemove
#鬼スキルアイテムランダム配布
execute if entity @s[tag=!NoSkillMode] as @a[team=Hunter] run function system:skill/skill_set
#防具
execute as @a[team=Escape] run function system:armor/escape
execute if entity @s[tag=!HideMode] as @a[team=Hunter] run function system:armor/hunter
#ハイドモードの場合鬼に透明付与
execute if entity @s[tag=HideMode] run effect give @a[team=Hunter] invisibility 999999 0 true
#鬼の特殊Effects付与
execute as @a[team=Hunter] run function system:main/effect
#鬼武器Give
give @a[team=Hunter,scores={TotalKill=0..99}] minecraft:stick{isWeapon:1b,display:{Name:"\"§6警棒\""},HideFlags:61,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:1,Operation:0,UUIDLeast:310539,UUIDMost:26428,Slot:"mainhand"}]}
give @a[team=Hunter,scores={TotalKill=100..}] minecraft:blaze_rod{isWeapon:1b,display:{Name:"\"§6警棒\"",Lore:["§e100人以上を捕まえた人のみが","§e扱える警棒","§e金色に輝いている..."]},HideFlags:61,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:1,Operation:0,UUIDLeast:310539,UUIDMost:26428,Slot:"mainhand"}],Enchantments:[{id:"sharpness",lvl:99}],HideFlags:1}
give @a[team=Hunter] minecraft:bow{Unbreakable:1,HideFlags:63,display:{Lore:["§a矢が戻ってこない場合弓を投げてください"]}}
give @a[team=Hunter] minecraft:arrow
#参加者体力設定
scoreboard players set @a[team=Hunter] Health 300
scoreboard players set @a[team=Escape] Health 100
#全員TP
execute as @a[team=Escape] run tp @s @e[sort=random,tag=EscapeSpawnPoint,limit=1]
execute as @a[team=Hunter] run tp @s @e[sort=random,tag=HunterSpawnPoint,limit=1]
#スタートフラグ設定
tag @s add GameStartCount
#ゲーム中フラグ
tag @s add GameRN
#一応のtitle time設定
title @a times 5 20 5