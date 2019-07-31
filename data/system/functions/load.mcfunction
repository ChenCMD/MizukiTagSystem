#絶対実行するやつ--------------------------------------------------------------------
execute as @e[tag=!NoInf,type=falling_block] run data merge entity @s {Time:1}
execute as @e[tag=GiveBook] run give @s written_book{pages:["[{\"text\":\"左クリックでスキル設定\"},{\"text\":\"\\n\\n・\"},{\"text\":\"スキルをセットしない\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger BowSkillType set 0\"},\"hoverEvent\":{\"action\":\"show_item\",\"value\":\"{id:\\\"minecraft:sign\\\",Count:1b,tag:{display:{Name:\\\"{\\\\\\\"text\\\\\\\":\\\\\\\"スキルをセットしない\\\\\\\",\\\\\\\"color\\\\\\\":\\\\\\\"white\\\\\\\",\\\\\\\"italic\\\\\\\":false}\\\",Lore:[\\\"§a普通の矢になります\\\",\\\"§aCT§f: §b0秒\\\"]}}}\"}},{\"text\":\"\\n\\n・\"},{\"text\":\"グラビティアロー\",\"color\":\"dark_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger BowSkillType set 1\"},\"hoverEvent\":{\"action\":\"show_item\",\"value\":\"{id:\\\"minecraft:sign\\\",Count:1b,tag:{display:{Name:\\\"{\\\\\\\"text\\\\\\\":\\\\\\\"グラビティアロー\\\\\\\",\\\\\\\"color\\\\\\\":\\\\\\\"dark_purple\\\\\\\",\\\\\\\"italic\\\\\\\":false}\\\",Lore:[\\\"§a矢が§n重力の影響を受けず§r§a、1.5倍の速度で飛んでいく\\\",\\\"§a威力§f: §c30ダメージ\\\",\\\"§aCT§f: §b10秒\\\"]}}}\"}},{\"text\":\"\\n\\n・\"},{\"text\":\"チェイスアロー\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger BowSkillType set 2\"},\"hoverEvent\":{\"action\":\"show_item\",\"value\":\"{id:\\\"minecraft:sign\\\",Count:1b,tag:{display:{Name:\\\"{\\\\\\\"text\\\\\\\":\\\\\\\"チェイスアロー\\\\\\\",\\\\\\\"color\\\\\\\":\\\\\\\"green\\\\\\\",\\\\\\\"italic\\\\\\\":false}\\\",Lore:[\\\"§a矢の半径3m以内に逃走者がいる場合\\\",\\\"§aテレポートしてヒットする\\\",\\\"§a威力§f: §c20ダメージ\\\",\\\"§aCT§f: §b15秒\\\"]}}}\"}},{\"text\":\"\\n\\n・\"},{\"text\":\"ブラストアロー\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger BowSkillType set 3\"},\"hoverEvent\":{\"action\":\"show_item\",\"value\":\"{id:\\\"minecraft:sign\\\",Count:1b,tag:{display:{Name:\\\"{\\\\\\\"text\\\\\\\":\\\\\\\"ブラストアロー\\\\\\\",\\\\\\\"color\\\\\\\":\\\\\\\"red\\\\\\\",\\\\\\\"italic\\\\\\\":false}\\\",Lore:[\\\"§a矢の着弾地点が爆発する\\\",\\\"§a威力§f: §c45ダメージ\\\",\\\"§aCT§f: §b40秒\\\"]}}}\"}},{\"text\":\"\\n\\n・\"},{\"text\":\"スポーンアロー\",\"color\":\"light_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger BowSkillType set 4\"},\"hoverEvent\":{\"action\":\"show_item\",\"value\":\"{id:\\\"minecraft:sign\\\",Count:1b,tag:{display:{Name:\\\"{\\\\\\\"text\\\\\\\":\\\\\\\"スポーンアロー\\\\\\\",\\\\\\\"color\\\\\\\":\\\\\\\"light_purple\\\\\\\",\\\\\\\"italic\\\\\\\":false}\\\",Lore:[\\\"§a矢の着弾地点にゾビィを召喚する\\\",\\\"§aゾビィ - HP§f: §b100,§aATK§f: §c30\\\",\\\"§aCT§f: §b40秒\\\"]}}}\"}}]"],title:"スナイパースキルブック",author:""}
tag @a remove GiveBook
#JOIN処理
execute as @a[scores={JOIN=1}] run function system:main/fast_join
#LEAVE処理
execute as @a[scores={Leave=1..}] run function system:main/leave

#メニューコマンド応答処理#####################################################################################
execute as @e[tag=MenuPos] at @s unless block ~1 ~-1 ~ minecraft:redstone_wire[power=2] unless block ~1 ~-1 ~ minecraft:redstone_wire[power=3] as @a[scores={OpenChest=1..}] as @e[tag=MenuPos] at @s run function system:menu/pattern/0
execute as @a[scores={OpenChest=1..}] run scoreboard players reset @s OpenChest

execute as @e[tag=MenuPos] at @s if block ~1 ~-1 ~ minecraft:redstone_wire[power=1] run function system:menu/load
execute as @e[tag=MenuPos] at @s if block ~1 ~-1 ~ minecraft:redstone_wire[power=2] run function system:menu/load
execute as @e[tag=MenuPos] at @s if block ~1 ~-1 ~ minecraft:redstone_wire[power=3] run function system:menu/load

#トリガー回収
execute as @a[scores={SignTrigger=1..}] run function system:main/job_systems/sign_trigger

#システムサポートサブ処理#####################################################################################
execute if entity @e[tag=SM,tag=HideMode] as @a[team=Hunter] at @s run particle block minecraft:black_wool ~ ~0.1 ~ 0.2 0 0.2 1 1 force @a

#ドアシステム#################################################################################################
scoreboard players add @e[tag=SM,scores={Door=1..80}] Door 1
execute if entity @e[tag=SM,scores={Door=1..80}] run function system:door/open
scoreboard players add @e[tag=SM,scores={Door=101..180}] Door 1
execute if entity @e[tag=SM,scores={Door=101..180}] run function system:door/close

#鬼抽選処理参加|拒否##########################################################################################
execute as @a[scores={UTST1=1..}] run function system:main/team_select/no
execute as @a[scores={UTST2=1..}] run function system:main/team_select/yes

#ダイス処理##################################################################################################
execute as @a[scores={Beacon_Break=1..}] run function system:dice/give
execute as @a[scores={DiceDrop=1..}] run function system:dice/drop
execute as @e[tag=Link_Dice] run function system:dice/act

#アイテムs
#リセットポーション
execute as @a[nbt={ActiveEffects:[{Id:26b,Amplifier:12b,Duration:0}]}] run tellraw @s {"text":"リセットポーションを飲んだ！","color":"green"}
execute as @a[nbt={ActiveEffects:[{Id:26b,Amplifier:12b,Duration:0}]}] run xp set @s 0 levels
execute as @a[team=Hunter,nbt={ActiveEffects:[{Id:26b,Amplifier:12b,Duration:0}]}] run scoreboard players set @s Health 300
execute as @a[team=Escape,nbt={ActiveEffects:[{Id:26b,Amplifier:12b,Duration:0}]}] run scoreboard players set @s Health 100

#イベント系
execute as @a[scores={Radar_Remaining=1..}] at @s run function system:dice/content_process/radar/act_base

#スキル処理: スピード#########################################################################################
give @a[tag=SpeedRemove,team=!Wait] minecraft:feather{HideFlags:1,Enchantments:[{id:protection,lvl:1}],display:{Name:"\"§aスピード\"",Lore:["§f自身に 移動速度上昇Ⅱ (0:05)の効果を付与する","§aCT§f: §b20秒"]}}
tag @a[tag=SpeedRemove] remove SpeedRemove
execute as @a[team=!Died,scores={use_speed=1..}] run tellraw @a[team=OP,tag=DebugView] [{"text":"[DEBUG] ","color":"dark_aqua"},{"selector":"@s","color":"dark_aqua"},{"text":" is Use Speed","color":"dark_aqua"}]
execute as @a[scores={use_speed=1..}] run function system:skill/escape/speed/use

#スキル処理: 透明#############################################################################################
give @a[tag=HideRemove,team=!Wait] minecraft:light_gray_stained_glass{HideFlags:1,Enchantments:[{id:protection,lvl:1}],display:{Name:"\"§7透明\"",Lore:["§f自身に 透明 (0:06)の効果を付与する","§aCT§f: §b30秒"]}}
tag @a[tag=HideRemove] remove HideRemove
execute as @a[team=!Died,scores={use_hide=1..}] run tellraw @a[team=OP,tag=DebugView] [{"text":"[DEBUG] ","color":"dark_aqua"},{"selector":"@s","color":"dark_aqua"},{"text":" is Use Hide","color":"dark_aqua"}]
execute as @a[scores={use_hide=1..}] run function system:skill/escape/hide/use
#ここ別のとこの処理にも併用
execute as @a[scores={InvisibleArmor=0..}] run function system:skill/escape/hide/act

#スキル処理: テレポート#######################################################################################
give @a[tag=TeleportRemove,team=!Wait] minecraft:ender_eye{HideFlags:1,Enchantments:[{id:protection,lvl:1}],display:{Name:"\"§5テレポート\"",Lore:["§f25m前方向にテレポートする","§f途中に貫通できないブロックがあった場合そこで止まる","§aCT§f: §b80秒"]}}
tag @a[tag=TeleportRemove] remove TeleportRemove
execute as @a[team=!Died,scores={use_teleport=1..}] run tellraw @a[team=OP,tag=DebugView] [{"text":"[DEBUG] ","color":"dark_aqua"},{"selector":"@s","color":"dark_aqua"},{"text":" is Use Teleport","color":"dark_aqua"}]
execute as @a[scores={use_teleport=1..}] run function system:skill/escape/teleport/use

#アイテム処理: LoD####################################################################################
#[LoDDrop NoteBlockドロップ検知] [LoDCount LoD成功回数] [LoDCT LoD戻ってくるまでの時間]
#確率 50% 35% 20% 5%
execute as @a[scores={LoDDrop=1..}] at @s run function system:skill/escape/taunt/use
execute as @a[scores={LoDCT=1..}] run scoreboard players add @s LoDCT 1
execute as @a[scores={LoDCT=900..},team=!Hunter,team=!Wait,team=!OP] run function system:skill/escape/taunt/give
execute as @a[scores={LoDCT=900..},team=!Escape,team=!Died] run scoreboard players reset @s LoDCT
#スキル処理: 鬼####################################################################################
#フラッシュサーチ
give @a[tag=FlashSRemove,team=Hunter] minecraft:beacon{HideFlags:1,Enchantments:[{id:protection,lvl:1}],display:{Name:"\"§eフラッシュサーチ\"",Lore:["§b§n半径20m§r§a以内の逃走者に§c発光/不運 (0:10)§a付与","§a自身に§9攻撃力 +20 (0:10)§a付与","§aCT§f: §b40秒"]}}
tag @a[tag=FlashSRemove] remove FlashSRemove
execute as @a[team=!Died,scores={use_flash_s=1..}] run tellraw @a[team=OP,tag=DebugView] [{"text":"[DEBUG] ","color":"dark_aqua"},{"selector":"@s","color":"dark_aqua"},{"text":" is Use FlashSearch","color":"dark_aqua"}]
execute as @a[scores={use_flash_s=1..}] run function system:skill/hunter/flash_search/use

#フラッシュマーキング
give @a[tag=FlashMRemove,team=Hunter] minecraft:glowstone_dust{HideFlags:1,Enchantments:[{id:protection,lvl:1}],display:{Name:"\"§eフラッシュマーキング\"",Lore:["§b§n半径40m§r§a以内の逃走者に§c発光 (0:01)§aを","§a付与するマーカーを召喚する","§aCT§f: §b50秒"]}}
tag @a[tag=FlashMRemove] remove FlashMRemove
execute as @a[team=!Died,scores={use_flash_m=1..}] run tellraw @a[team=OP,tag=DebugView] [{"text":"[DEBUG] ","color":"dark_aqua"},{"selector":"@s","color":"dark_aqua"},{"text":" is Use FlashMarking","color":"dark_aqua"}]
execute as @a[scores={use_flash_m=1..}] run function system:skill/hunter/flash_marking/use
execute as @e[tag=Flash] at @s run function system:skill/hunter/flash_marking/act

#弓全般
execute as @a[team=!Died,scores={UseBow=1..}] run tellraw @a[team=OP,tag=DebugView] [{"text":"[DEBUG] ","color":"dark_aqua"},{"selector":"@s","color":"dark_aqua"},{"text":" is Use Bow","color":"dark_aqua"}]
execute as @a[scores={UseBow=1..}] at @s if entity @e[type=arrow,distance=..5,sort=nearest,limit=1] run function system:skill/hunter/sorted
execute if entity @e[nbt={inGround:1b},type=arrow] as @a run function system:main/arrow/id_verification

#グラビティアロー
give @a[tag=ArrowGRemove,team=Hunter] minecraft:firework_star{HideFlags:1,Enchantments:[{id:protection,lvl:1}],display:{Name:"{\"text\":\"グラビティアロー\",\"color\":\"dark_purple\",\"italic\":false}",Lore:["§a矢が§n重力の影響を受けず§r§a音速で飛んでいく","§c最大まで引かなければ放てない","§a射程§f: §d100m","§a威力§f: §c35ダメージ","§aCT§f: §b20秒"]}}
tag @a[tag=ArrowGRemove] remove ArrowGRemove
execute as @a[team=!Died,scores={use_arrow_g=1..}] run tellraw @a[team=OP,tag=DebugView] [{"text":"[DEBUG] ","color":"dark_aqua"},{"selector":"@s","color":"dark_aqua"},{"text":" is Use GravityArrow","color":"dark_aqua"}]
execute as @a[scores={use_arrow_g=1..}] run function system:skill/hunter/gravity_arrow/use

#チェイスアロー
give @a[tag=ArrowCRemove,team=Hunter] minecraft:emerald{HideFlags:1,Enchantments:[{id:protection,lvl:1}],display:{Name:"{\"text\":\"チェイスアロー\",\"color\":\"green\",\"italic\":false}",Lore:["§a矢の§b§n半径4m§r§a以内に逃走者がいる場合","§aテレポートしてヒットする","§c最大まで引かなければ放てない","§a威力§f: §c35ダメージ","§aCT§f: §b10秒"]}}
tag @a[tag=ArrowCRemove] remove ArrowCRemove
execute as @a[team=!Died,scores={use_arrow_c=1..}] run tellraw @a[team=OP,tag=DebugView] [{"text":"[DEBUG] ","color":"dark_aqua"},{"selector":"@s","color":"dark_aqua"},{"text":" is Use ChaseArrow","color":"dark_aqua"}]
execute as @a[scores={use_arrow_c=1..}] run function system:skill/hunter/chase_arrow/use
execute as @e[tag=Arrow_Chase,type=arrow] at @s run function system:skill/hunter/chase_arrow/act

#トラップ # "§a威力§f: §c35ダメージ",
give @a[tag=TrapRemove,team=Hunter] minecraft:black_carpet{HideFlags:1,Enchantments:[{id:protection,lvl:1}],display:{Name:"\"§8トラップ\"",Lore:["§aトラップを設置する","§a範囲§f: §b3x3","§a効果§f: §c鈍足/盲目/不運/発光 (0:05)","§aCT§f: §b15秒 §f| §a消滅§f: §b120秒"]}}
tag @a[tag=TrapRemove] remove TrapRemove
execute as @a[team=!Died,scores={use_trap=1..}] run tellraw @a[team=OP,tag=DebugView] [{"text":"[DEBUG] ","color":"dark_aqua"},{"selector":"@s","color":"dark_aqua"},{"text":" is Use Trap","color":"dark_aqua"}]
execute as @a[scores={use_trap=1..}] run function system:skill/hunter/trap/use
execute as @e[tag=Trap] at @s positioned ~-1 ~ ~-1 run function system:skill/hunter/trap/act

#ランドマイン
give @a[tag=LandmineRemove,team=Hunter] minecraft:iron_trapdoor{HideFlags:1,Enchantments:[{id:protection,lvl:1}],display:{Name:"\"§cランドマイン\"",Lore:["§a地雷を設置する","§a起爆範囲§f: §b3x3 §f| §a爆発範囲§f: §b7x7","§a威力§f: §c60ダメージ","§aCT§f: §b20秒 §f| §a消滅§f: §b180秒"]}}
tag @a[tag=LandmineRemove] remove LandmineRemove
execute as @a[team=!Died,scores={use_landmine=1..}] run tellraw @a[team=OP,tag=DebugView] [{"text":"[DEBUG] ","color":"dark_aqua"},{"selector":"@s","color":"dark_aqua"},{"text":" is Use Landmine","color":"dark_aqua"}]
execute as @a[scores={use_landmine=1..}] run function system:skill/hunter/landmine/use
execute as @e[tag=Landmine] at @s positioned ~-1 ~ ~-1 run function system:skill/hunter/landmine/act

#テリトリートテーム
give @a[tag=TerritoryTRemove,team=Hunter] minecraft:end_rod{HideFlags:1,Enchantments:[{id:protection,lvl:1}],display:{Name:"\"§3テリトリートーテム\"",Lore:["§aトーテムを設置する","§a範囲§f: §b20x20","§a効果§f: §c鈍足 Ⅱ (0:10)","§aCT§f: §b30秒 §f| §a消滅§f: §b60秒"]}}
tag @a[tag=TerritoryTRemove] remove TerritoryTRemove
execute as @a[team=!Died,scores={use_territory_t=1..}] run tellraw @a[team=OP,tag=DebugView] [{"text":"[DEBUG] ","color":"dark_aqua"},{"selector":"@s","color":"dark_aqua"},{"text":" is Use TerritoryTotem","color":"dark_aqua"}]
execute as @a[scores={use_territory_t=1..}] run function system:skill/hunter/territory_totem/use
execute as @e[tag=Totem] at @s positioned ~-9 ~ ~-9 run function system:skill/hunter/territory_totem/act

#ハイパージャンプ
give @a[tag=HyperJumpRemove,team=Hunter] minecraft:slime_ball{HyperJump:1b,HideFlags:1,Enchantments:[{id:protection,lvl:1}],display:{Name:"\"§bハイパージャンプ\"",Lore:["§a持った状態でシフトで溜める","§a溜め中は動くことが出来ない","§a最大10m飛ぶことが出来る"]}}
tag @a[tag=HyperJumpRemove] remove HyperJumpRemove
tag @a[scores={use_highjump=1..}] add HyperJumpRemove
scoreboard players reset @a[scores={use_highjump=1..}] use_highjump

execute as @a[nbt={SelectedItem:{tag:{HyperJump:1b}}},scores={Sneak=1..}] at @s run function system:skill/hunter/hyper_jump/act
execute as @a unless entity @s[scores={Sneak=0..}] run scoreboard players reset @s HighJump
execute as @a unless entity @s[scores={Sneak=0..},team=Hunter] run effect clear @s minecraft:slowness
execute as @a unless entity @s[scores={Sneak=0..},team=Hunter] run effect clear @s minecraft:jump_boost
execute as @a[scores={Jump=0..}] run scoreboard players reset @s HighJump
execute as @a[scores={Jump=0..},team=Hunter] run effect clear @s minecraft:slowness
execute as @a[scores={Jump=0..},team=Hunter] run effect clear @s minecraft:jump_boost
execute as @a[nbt=!{SelectedItem:{tag:{HyperJump:1b}}}] run scoreboard players reset @s HighJump
execute as @a[nbt=!{SelectedItem:{tag:{HyperJump:1b}}},team=Hunter] run effect clear @s minecraft:slowness
execute as @a[nbt=!{SelectedItem:{tag:{HyperJump:1b}}},team=Hunter] run effect clear @s minecraft:jump_boost
scoreboard players reset @a Jump
scoreboard players reset @a Sneak


#アイテム戻ってくるやつ#########################################################################################
give @a[tag=BlazeRodRemove,scores={TotalKill=100..}] minecraft:blaze_rod{isWeapon:1b,display:{Name:"\"§6警棒\"",Lore:["§e100人以上を捕まえた人のみが","§e扱える警棒","§e金色に輝いている..."]},HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:1,Operation:0,UUIDLeast:310539,UUIDMost:26428,Slot:"mainhand"}],Enchantments:[{id:"sharpness",lvl:99}],HideFlags:1}
tag @a[tag=BlazeRodRemove] remove BlazeRodRemove
tag @a[scores={Drop_BlazeRod=1..},team=!Died] add BlazeRodRemove
scoreboard players reset @a Drop_BlazeRod

give @a[tag=StickRemove,scores={TotalKill=0..99}] minecraft:stick{isWeapon:1b,display:{Name:"\"§6警棒\""},HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:999,Operation:0,UUIDLeast:1,UUIDMost:1,Slot:"mainhand"},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:1,Operation:0,UUIDLeast:310539,UUIDMost:26428,Slot:"mainhand"}]}
tag @a[tag=StickRemove] remove StickRemove
tag @a[scores={Drop_Stick=1..},team=!Died] add StickRemove
scoreboard players reset @a Drop_Stick

give @a[tag=BowRemove] minecraft:bow{Unbreakable:1,HideFlags:63,display:{Lore:["§a矢が戻ってこない場合弓を投げてください"]}}
execute if entity @a[tag=BowRemove] as @e[type=arrow] if score @s UserID = @a[tag=BowRemove,limit=1] UserID run kill @s
clear @a[tag=BowRemove] minecraft:arrow
give @a[tag=BowRemove] minecraft:arrow
tag @a[tag=BowRemove] remove BowRemove
tag @a[scores={Drop_Bow=1..},team=!Wait] add BowRemove
scoreboard players reset @a Drop_Bow

give @a[tag=ArrowRemove] minecraft:arrow
tag @a[tag=ArrowRemove] remove ArrowRemove
tag @a[scores={Drop_Arrow=1..},team=!Wait] add ArrowRemove
scoreboard players reset @a Drop_Arrow


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

execute as @a[team=Escape] run function system:main/job_systems/health
execute if entity @a[scores={CT=1..}] run function system:main/ct
execute if entity @e[tag=!GameStartCount,tag=!GameTime_Yes,tag=SM] run function system:main/actionbar_mes

#自然回復
execute unless entity @e[tag=SM,tag=!NoHealthRegen] run function system:main/regen

#定期フラッシュ
execute as @e[tag=DeleyFlash] run scoreboard players add @s TimeFlash 1
execute as @e[tag=DeleyFlash] if score @s TimeFlash > $TimeFlash AddTmp at @s run function system:event/fixed_time_flash/act

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


tag @e[tag=!NoKill,type=item,nbt=!{Item:{tag:{NoKill:1b}}},nbt=!{Item:{id:"minecraft:carrot_on_a_stick"}}] add kill
tag @e[type=arrow,nbt={inGround:true}] add kill
tag @e[type=spectral_arrow,nbt={inGround:true}] add kill
kill @e[tag=kill,type=!player]

execute as @a[scores={Trigger=1..}] run function system:main/stats_view
scoreboard players enable @a Trigger


advancement revoke @a only system:onattack/for_player
advancement revoke @a only system:onattack/is_projectile