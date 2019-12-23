#絶対実行するやつ--------------------------------------------------------------------
execute as @e[tag=!NoInf,type=falling_block] run data merge entity @s {Time:1}
#JOIN処理
execute as @a[scores={JOIN=1}] run function system:main/fast_join
#LEAVE処理
execute as @a[scores={Leave=1..}] run function system:main/leave


#メニューコマンド応答処理#####################################################################################
execute as @e[tag=MenuPos] at @s unless block ~1 ~-1 ~ minecraft:redstone_wire[power=2] unless block ~1 ~-1 ~ minecraft:redstone_wire[power=3] as @a[scores={OpenChest=1..}] as @e[tag=MenuPos] at @s run function system:menu/pattern/0
execute as @a[scores={OpenChest=1..}] run scoreboard players reset @s OpenChest

execute as @e[tag=MenuPos] at @s unless block ~1 ~-1 ~ minecraft:redstone_wire[power=0] run function system:menu/load


#システムサポートサブ処理#####################################################################################
execute if entity @e[tag=SM,tag=HideMode] as @a[team=Hunter] at @s run particle block minecraft:black_wool ~ ~0.1 ~ 0.2 0 0.2 1 1 force @a
execute if entity @e[tag=SM,tag=HalloweenEvent] as @a[team=Hunter] at @s run particle minecraft:dust 0.8 0.8 0.8 0.8 ~ ~ ~ 0.4 1 0.4 1 1 force @a

#ドアシステム#################################################################################################
scoreboard players add @e[tag=SM,scores={Door=1..80}] Door 1
execute if entity @e[tag=SM,scores={Door=1..80}] run function system:door/open
scoreboard players add @e[tag=SM,scores={Door=101..180}] Door 1
execute if entity @e[tag=SM,scores={Door=101..180}] run function system:door/close

###############################################################################################################################################################
#根本的なアイテム処理
execute as @a[tag=ItemGive] run function system:skill/branch/give
execute as @a[scores={CarrotClick=1..}] at @s run function system:skill/branch/click
execute as @a[scores={CarrotDrop=1..}] at @s run function system:skill/branch/drop/main
#ダイス処理 確率 50% 35% 20% 5%
execute as @a[scores={LoDCT=1..}] run scoreboard players remove @s LoDCT 1
execute as @a[scores={LoDCT=0}] run function system:skill/escape/taunt/give
execute as @a[team=Escape,scores={LoDCount=..99}] unless score @s LoDCT matches 0.. run scoreboard players add @s LoDAddCycle 1
execute as @a[team=Escape,scores={LoDCount=..99}] unless score @s LoDCT matches 0.. if score @s LoDAddCycle >= @s LoDSuccessCount run scoreboard players add @s LoDCount 1
execute as @a[team=Escape] if score @s LoDAddCycle >= @s LoDSuccessCount run scoreboard players set @s LoDAddCycle 0
#ダイス処理
execute as @a[scores={DiceDrop=1..}] run function system:dice/drop
execute as @e[tag=Link_Dice] at @s run function system:dice/act
#ダイスイベント系
execute as @a[scores={Radar_Remaining=1..}] at @s run function system:dice/content_process/radar/act_base
#ダイスアイテムs
execute as @e[tag=SuperBomb] at @s run function system:dice/content_process/super_bomb/act
execute as @a[nbt={ActiveEffects:[{Id:26b,Amplifier:12b,Duration:0}]}] run function system:dice/content_process/reset_potion/act
execute as @e[tag=Smoke] at @s run function system:dice/content_process/smoke/act
execute as @e[tag=CaptureNet] at @s positioned ~-1 ~ ~-1 run function system:dice/content_process/capture_net/act
execute as @e[tag=InstantWall] at @s run function system:dice/content_process/instant_wall/act
execute if entity @e[tag=SM,tag=HalloweenEvent] as @e[tag=Cookie] at @s run function system:skill/escape/cookie/act
#弓処理
execute as @a[scores={UseBow=1..}] at @s if entity @e[type=arrow,distance=..5,sort=nearest,limit=1] run function system:skill/hunter/sorted
execute if entity @e[tag=SM,tag=!HalloweenEvent] as @e[nbt={life:0s}] at @s run particle minecraft:dust 0.5 0 0.5 1 ~ ~ ~ 0 0 0 1 1 force
execute if entity @e[tag=SM,tag=HalloweenEvent] as @e[nbt={life:0s}] at @s run particle minecraft:dust 1 0.5 0 1 ~ ~ ~ 0 0 0 1 1 force
execute if entity @e[nbt={inGround:1b},type=arrow] as @a run function system:main/arrow/id_verification
#スキル処理
execute as @a[scores={InvisibleArmor=0..}] run function system:skill/escape/hide/act
execute as @e[tag=Flash] at @s run function system:skill/hunter/flash_marking/act
execute as @e[tag=Arrow_Chase,type=arrow] at @s run function system:skill/hunter/chase_arrow/act
execute as @e[tag=Trap] at @s positioned ~-1 ~ ~-1 run function system:skill/hunter/trap/act
execute as @e[tag=Landmine] at @s positioned ~-1 ~ ~-1 run function system:skill/hunter/landmine/act
execute as @e[tag=Totem] at @s positioned ~-6.5 ~ ~-6.5 run function system:skill/hunter/territory_totem/act
#Xmas
execute if entity @e[tag=SM,tag=XmasEvent] run function system:event/xmas/tick
execute if entity @e[tag=SM,tag=XmasEvent] as @e[type=snowball] at @s run function system:event/xmas/snowball/tick
execute if entity @e[tag=SM,tag=XmaxEvent] as @e[type=armor_stand,tag=GravityCheck,nbt=!{FallDistance:0f}] at @s run function system:event/xmas/snowball/act
#ハイパージャンプ
function system:skill/hunter/hyper_jump/tick

#アイテム戻ってくるやつ#########################################################################################
execute if entity @e[tag=SM,tag=!HalloweenEvent] run give @a[tag=HyperJumpRemove,team=Hunter] minecraft:slime_ball{HyperJump:1b,HideFlags:1,Enchantments:[{id:protection,lvl:1s}],display:{Name:"\"§bハイパージャンプ\"",Lore:["{\"text\":\"§a持った状態でシフトで溜める\"}","{\"text\":\"§a溜め中は動くことが出来ない\"}","{\"text\":\"§a最大10m飛ぶことが出来る\"}"]}}
execute if entity @e[tag=SM,tag=HalloweenEvent] run give @a[tag=HyperJumpRemove,team=Hunter] minecraft:slime_ball{HyperJump:1b,HideFlags:1,Enchantments:[{id:protection,lvl:1s}],display:{Name:"\"§bハイパージャンプ\"",Lore:["{\"text\":\"§a持った状態でシフトで溜める\"}","{\"text\":\"§a溜め中は動くことが出来ない\"}","{\"text\":\"§a最大§m10m§r§6§l18m§r§a飛ぶことが出来る\"}"]}}
tag @a[tag=HyperJumpRemove] remove HyperJumpRemove
tag @a[scores={use_highjump=1..}] add HyperJumpRemove
scoreboard players reset @a[scores={use_highjump=1..}] use_highjump

tag @a[tag=BowRemove] add G.1001
tag @a[tag=BowRemove] add ItemGive
execute if entity @a[tag=BowRemove] as @e[type=arrow] if score @s UserID = @a[tag=BowRemove,limit=1] UserID run kill @s
clear @a[tag=BowRemove] minecraft:arrow
give @a[tag=BowRemove] minecraft:arrow
tag @a[tag=BowRemove] remove BowRemove
tag @a[team=!OP,team=!Wait,team=!Died,scores={Drop_Bow=1..}] add BowRemove
scoreboard players reset @a Drop_Bow

give @a[tag=ArrowRemove] minecraft:arrow
tag @a[tag=ArrowRemove] remove ArrowRemove
tag @a[team=!OP,team=!Wait,team=!Died,team=!Escape,scores={ArrowDrop=1..}] add ArrowRemove
scoreboard players reset @a ArrowDrop


#Count系変数処理##############################################################################################
execute if entity @e[tag=!GameStartCount,tag=!GameTime_Yes,tag=SM] run scoreboard players set @e[tag=SM] UTSTCount 0
execute if entity @e[tag=!GameStartCount,tag=!GameTime_Yes,tag=SM] as @a[scores={UseTeamSelect=2},gamemode=!spectator,team=!OP] run scoreboard players add @e[tag=SM] UTSTCount 1
execute if entity @e[tag=!GameStartCount,tag=!GameTime_Yes,tag=SM] run scoreboard players set @e[tag=SM] PlayerCount 0
execute if entity @e[tag=!GameStartCount,tag=!GameTime_Yes,tag=SM] as @a[team=Wait,gamemode=!spectator] run scoreboard players add @e[tag=SM] PlayerCount 1

#鬼ペナ処理
execute as @a[scores={HunterPenalty=1..}] run function system:mode/penalty


#アイテム系Title処理##########################################################################################
execute as @a[team=Hunter,tag=!ChaseArrowReady,tag=!GravityArrowReady] unless score @s HighJump matches 0.. run function system:main/job_systems/health
execute as @a[team=Hunter,tag=!ChaseArrowReady,tag=GravityArrowReady] unless score @s HighJump matches 0.. run function system:main/job_systems/gravity_health
execute as @a[team=Hunter,tag=ChaseArrowReady,tag=!GravityArrowReady] unless score @s HighJump matches 0.. run function system:main/job_systems/chase_health

execute as @a[team=Escape,tag=!HaveLoD] run function system:main/job_systems/health
execute as @a[team=Escape,tag=HaveLoD] run function system:main/job_systems/escape_health
execute if entity @a[scores={CT=1..}] run function system:main/ct
execute if entity @e[tag=!GameStartCount,tag=!GameTime_Yes,tag=SM] run function system:main/actionbar_mes

#自然回復
execute unless entity @e[tag=SM,tag=!NoHealthRegen] run function system:main/regen

#定期フラッシュ
execute as @e[tag=DeleyFlash] run function system:event/fixed_time_flash/radar/act_base
execute as @e[tag=DeleyFlash] if score @s TimeFlash > $TimeFlash Ver at @s run function system:event/fixed_time_flash/act

#脱獄モードの場合の追加処理
execute if entity @e[tag=SM,scores={UseRuleSelect=3}] run function system:mode/3-a


#スタートカウントダウン処理 [必要: GameStartCount]########################################################
execute if entity @e[tag=SM,tag=GameStartCount] run function system:main/time/start_count

#制限時間処理 [必要: GameTime_Yes]############################################################################
execute if entity @e[tag=SM,tag=GameTime_Yes] run function system:main/time/act

#ゲーム終了処理確認 [必要: GameEndSystem_Confirm]#############################################################
execute if entity @e[tag=SM,tag=GameEndSystem_Confirm] run function system:main/end_check

#ディスプレイ同期処理#########################################################################################
scoreboard players operation §a残り時間 Display = @e[tag=SM] GameTimeB
scoreboard players set @e[tag=SM] PlayersCount 0
execute as @a[team=Escape] run scoreboard players add @e[tag=SM] PlayersCount 1
scoreboard players operation §b残り逃走者数 Display = @e[tag=SM] PlayersCount
execute store result bossbar mizuki:time/mode1 value run scoreboard players get @e[tag=SM,limit=1] GameTimeB
execute store result bossbar mizuki:time/mode2 value run scoreboard players get @e[tag=SM,limit=1] GameTimeB
execute store result bossbar mizuki:time/mode3 value run scoreboard players get @e[tag=SM,limit=1] GameTimeB

#処理完了
execute if entity @e[tag=SM,tag=!SystemFix] run tellraw @a[tag=OP] [{"text":"[Chen'sSystem] ","color":"aqua"},{"text":"MainSystem","color":"green"},{"text":" : ","color":"white"},{"text":"VeryGood.","color":"green"}]
tag @e[tag=SM] add SystemFix

tag @e[tag=!NoKill,type=item,nbt=!{Item:{tag:{NoKill:1b}}},nbt=!{Item:{tag:{display:{Name:"{\"text\":\"BlingEdit\"}"}}}}] add kill
tag @e[type=arrow,nbt={inGround:true}] add kill
tag @e[type=spectral_arrow,nbt={inGround:true}] add kill
kill @e[tag=kill,type=!player]

execute as @a[scores={Trigger=1..}] run function system:main/stats_view
scoreboard players enable @a Trigger

execute as @a[advancements={system:ondamage/for_player=true}] at @s run function system:main/job_systems/calc/health
execute as @a[advancements={system:ondamage/is_projectile=true}] at @s run function system:main/job_systems/calc/arrow_health
execute as @a[advancements={system:ondamage/is_gravity_arrow=true}] at @s run function system:main/job_systems/calc/arrow_health
execute as @a[advancements={system:ondamage/is_chase_arrow=true}] at @s run function system:main/job_systems/calc/arrow_health
execute as @a[advancements={system:onattack/is_projectile=true}] at @s run function system:main/job_systems/calc/arrow_attack

#グリッチ対策
execute as @a at @s if block ~ ~ ~ minecraft:cauldron if block ~ ~1 ~ minecraft:iron_trapdoor[open=false,half=bottom] run tp @s ~ ~1.3 ~

#DEBUG
execute if score $DEBUG DEBUG_CODE matches 1 run tellraw @a[tag=DebugView] [{"text":"[DEBUG] ","color":"dark_aqua"},{"text":"system:load.mcfunction run stats","color":"dark_aqua"},{"text":": ","color":"white"},{"text":"SUCCESS","color":"green"},{"text":"\n[DEBUG] ","color":"dark_aqua"},{"text":"Run from","color":"dark_aqua"},{"text":": ","color":"white"},{"selector":"@s","color":"light_purple"}]
execute if score $DEBUG DEBUG_CODE matches 1 run scoreboard players reset $DEBUG

execute if score $DEBUG DEBUG_CODE matches 1.. run scoreboard players add $DEBUG DEBUG_CODE_DELY 1
execute if score $DEBUG DEBUG_CODE matches 1.. if score $DEBUG DEBUG_CODE_DELY matches 300.. run tellraw @a[tag=DebugView] [{"text":"[DEBUG] ","color":"dark_aqua"},{"text":"function run stats","color":"dark_aqua"},{"text":": ","color":"white"},{"text":"TIMEOUT","color":"red"}]
execute if score $DEBUG DEBUG_CODE matches 1.. if score $DEBUG DEBUG_CODE_DELY matches 300.. run scoreboard players reset $DEBUG

tp @e[tag=ChunkLoadEntity] ~ ~-300 ~
kill @e[tag=ChunkLoadEntity]