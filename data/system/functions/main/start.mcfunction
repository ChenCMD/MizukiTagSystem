#アイテムclear
clear @a minecraft:gravel
clear @a minecraft:barrier
clear @a minecraft:lime_wool
clear @a minecraft:diamond
clear @a minecraft:emerald
#時間関連の設定
scoreboard players operation @s GameTimeB = @s GameTimeC
execute store result bossbar mizuki:time max run scoreboard players get @s GameTimeC
bossbar set mizuki:time players @a
scoreboard players set @s END_COUNT 1
#参加者にタグ付与
tag @a[gamemode=!spectator,team=!OP] add GamePlayer
#ゲームモード変更
gamemode adventure @a[gamemode=!spectator,team=!OP]
#全員逃走者join
team join Escape @a[gamemode=!spectator,team=!OP]
#鬼決め
execute if entity @s[scores={PlayerCount-AA=1}] if score @s UTSTCount < @s PlayerCount-AA run team join Hunter @a[sort=random,limit=1,gamemode=!spectator,team=!OP]
execute if entity @s[scores={PlayerCount-AA=2}] if score @s UTSTCount < @s PlayerCount-AA run team join Hunter @a[sort=random,limit=2,gamemode=!spectator,team=!OP]
execute if entity @s[scores={PlayerCount-AA=3}] if score @s UTSTCount < @s PlayerCount-AA run team join Hunter @a[sort=random,limit=3,gamemode=!spectator,team=!OP]
execute if entity @s[scores={PlayerCount-AA=4}] if score @s UTSTCount < @s PlayerCount-AA run team join Hunter @a[sort=random,limit=4,gamemode=!spectator,team=!OP]
execute if entity @s[scores={PlayerCount-AA=5}] if score @s UTSTCount < @s PlayerCount-AA run team join Hunter @a[sort=random,limit=5,gamemode=!spectator,team=!OP]
execute if entity @s[scores={PlayerCount-AA=6}] if score @s UTSTCount < @s PlayerCount-AA run team join Hunter @a[sort=random,limit=6,gamemode=!spectator,team=!OP]
execute if entity @s[scores={PlayerCount-AA=7}] if score @s UTSTCount < @s PlayerCount-AA run team join Hunter @a[sort=random,limit=7,gamemode=!spectator,team=!OP]
execute if entity @s[scores={PlayerCount-AA=1}] if score @s UTSTCount >= @s PlayerCount-AA if entity @a[scores={UseTeamSelect=2}] if score @s PlayerCount-AA matches 1 run team join Hunter @a[sort=random,limit=1,scores={UseTeamSelect=2},gamemode=!spectator,team=!OP]
execute if entity @s[scores={PlayerCount-AA=2}] if score @s UTSTCount >= @s PlayerCount-AA if entity @a[scores={UseTeamSelect=2}] if score @s PlayerCount-AA matches 2 run team join Hunter @a[sort=random,limit=2,scores={UseTeamSelect=2},gamemode=!spectator,team=!OP]
execute if entity @s[scores={PlayerCount-AA=3}] if score @s UTSTCount >= @s PlayerCount-AA if entity @a[scores={UseTeamSelect=2}] if score @s PlayerCount-AA matches 3 run team join Hunter @a[sort=random,limit=3,scores={UseTeamSelect=2},gamemode=!spectator,team=!OP]
execute if entity @s[scores={PlayerCount-AA=4}] if score @s UTSTCount >= @s PlayerCount-AA if entity @a[scores={UseTeamSelect=2}] if score @s PlayerCount-AA matches 4 run team join Hunter @a[sort=random,limit=4,scores={UseTeamSelect=2},gamemode=!spectator,team=!OP]
execute if entity @s[scores={PlayerCount-AA=5}] if score @s UTSTCount >= @s PlayerCount-AA if entity @a[scores={UseTeamSelect=2}] if score @s PlayerCount-AA matches 5 run team join Hunter @a[sort=random,limit=5,scores={UseTeamSelect=2},gamemode=!spectator,team=!OP]
execute if entity @s[scores={PlayerCount-AA=6}] if score @s UTSTCount >= @s PlayerCount-AA if entity @a[scores={UseTeamSelect=2}] if score @s PlayerCount-AA matches 6 run team join Hunter @a[sort=random,limit=6,scores={UseTeamSelect=2},gamemode=!spectator,team=!OP]
execute if entity @s[scores={PlayerCount-AA=7}] if score @s UTSTCount >= @s PlayerCount-AA if entity @a[scores={UseTeamSelect=2}] if score @s PlayerCount-AA matches 7 run team join Hunter @a[sort=random,limit=7,scores={UseTeamSelect=2},gamemode=!spectator,team=!OP]
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
#ダイス用ピッケル
#give @a[team=Escape] minecraft:diamond_pickaxe{Unbreakable:1,CanDestroy:["minecraft:obsidian"],Enchantments:[{id:"minecraft:efficiency",lvl:1}],AttributeModifiers:[{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:-0.5,Operation:1,UUIDLeast:5,UUIDMost:666,Slot:"mainhand"}]} 1
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
#一応のtitle time設定
title @a times 5 20 5