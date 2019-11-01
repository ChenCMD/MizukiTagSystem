#アイテムclear
clear @a[gamemode=!spectator,team=!OP]
#時間関連の設定
scoreboard players operation @s GameTimeB = @s GameTimeC
execute store result bossbar mizuki:time/mode1 max run scoreboard players get @s GameTimeC
execute store result bossbar mizuki:time/mode2 max run scoreboard players get @s GameTimeC
execute store result bossbar mizuki:time/mode3 max run scoreboard players get @s GameTimeC
execute if entity @s[scores={UseRuleSelect=1}] run bossbar set mizuki:time/mode1 players @a
execute if entity @s[scores={UseRuleSelect=2}] run bossbar set mizuki:time/mode2 players @a
execute if entity @s[scores={UseRuleSelect=3}] run bossbar set mizuki:time/mode3 players @a
scoreboard players set @s END_COUNT 1
#Halloween
execute if entity @s[tag=HalloweenEvent] run team modify Hunter prefix {"text":"[幽霊] ","color":"red"}
execute if entity @s[tag=!HalloweenEvent] run team modify Hunter prefix {"text":"[鬼] ","color":"red"}
execute if entity @s[tag=HalloweenEvent] run time set midnight
execute if entity @s[tag=!HalloweenEvent] run time set noon
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
#Luck of Dice回数リセット
scoreboard players set @a[team=Escape] LoDCount 0
scoreboard players operation @e[tag=SM] LoDDeley = $LoDDeley Ver
#逃走者スキルアイテムGive
execute if entity @s[tag=!NoSkillMode] run tag @a[team=Escape] add G.001
execute if entity @s[tag=!NoSkillMode] run tag @a[team=Escape] add G.002
execute if entity @s[tag=!NoSkillMode] run tag @a[team=Escape] add G.003
execute if entity @s[tag=!NoSkillMode] run tag @a[team=Escape] add ItemGive
execute if entity @s[tag=!NoLoD] run scoreboard players operation $LoDCopy Ver = $LoD Ver
execute if entity @s[tag=!HalloweenEvent] run tellraw @a [{"text":"Luck of Dice所持者","color":"green"},{"text":": ","color":"white"}]
execute if entity @s[tag=HalloweenEvent] run tellraw @a [{"text":"お菓子箱所持者","color":"gold"},{"text":": ","color":"white"}]
execute if entity @s[tag=!NoLoD] run function system:skill/escape/taunt/loop
tag @a remove LoD1
#鬼スキルアイテムランダム配布
execute if entity @s[tag=!NoSkillMode] as @a[team=Hunter] run function system:skill/skill_set
#防具
execute as @a[team=Escape] run function system:armor/escape
execute if entity @s[tag=!HideMode] as @a[team=Hunter] run function system:armor/hunter
#ハイドモードの場合鬼に透明付与
execute if entity @s[tag=HideMode] run effect give @a[team=Hunter] invisibility 999999 0 true
execute if entity @s[tag=HalloweenEvent] run effect give @a[team=Hunter] invisibility 999999 0 true
#鬼の特殊Effects付与
execute as @a[team=Hunter] run function system:main/effect
#鬼武器Give
tag @a[team=Hunter] add G.1001
tag @a[team=Hunter] add ItemGive
give @a[team=Hunter] minecraft:arrow
execute if entity @e[tag=SM,tag=!HalloweenEvent] run replaceitem entity @a[team=Hunter] hotbar.8 minecraft:slime_ball{HyperJump:1b,HideFlags:1,Enchantments:[{id:protection,lvl:1}],display:{Name:"\"§bハイパージャンプ\"",Lore:["{\"text\":\"§a持った状態でシフトで溜める\"}","{\"text\":\"§a溜め中は動くことが出来ない\"}","{\"text\":\"§a最大10m飛ぶことが出来る\"}"]}}
execute if entity @e[tag=SM,tag=HalloweenEvent] run replaceitem entity @a[team=Hunter] hotbar.8 minecraft:slime_ball{HyperJump:1b,HideFlags:1,Enchantments:[{id:protection,lvl:1}],display:{Name:"\"§bハイパージャンプ\"",Lore:["{\"text\":\"§a持った状態でシフトで溜める\"}","{\"text\":\"§a溜め中は動くことが出来ない\"}","{\"text\":\"§a最大§m10m§r§6§l18m§r§a飛ぶことが出来る\"}"]}}
#参加者体力設定
scoreboard players set @a[team=Hunter] Health 300
scoreboard players set @a[team=Escape] Health 100
#全員TP
function system:main/chunk_load/esp
function system:main/chunk_load/hsp
execute as @a[team=Escape] run tp @s @e[sort=random,tag=EscapeSpawnPoint,limit=1]
execute as @a[team=Hunter] run tp @s @e[sort=random,tag=HunterSpawnPoint,limit=1]
#スタートフラグ設定
tag @s add GameStartCount
#ゲーム中フラグ
tag @s add GameRN
#一応のtitle time設定
title @a times 5 20 5