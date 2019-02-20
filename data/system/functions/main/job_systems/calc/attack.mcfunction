#execute as @a[scores={Health=..0},advancements={system:ondamage/for_player=true}] store success score @s NoDeath run clear @s minecraft:clock{Enchantments:[{id:"sharpness",lvl:1}]} 0
scoreboard players add @a[scores={Health=..0},advancements={system:ondamage/for_player=true}] NoDeath 0
tag @a[scores={Health=..0,NoDeath=0},advancements={system:ondamage/for_player=true}] add Death
#execute at @s as @a[scores={Health=..0,NoDeath=1},advancements={system:ondamage/for_player=true}] run function system:main/job_systems/calc/death_cancel
#scoreboard players reset @a NoDeath
#死亡処理
execute if entity @a[tag=Death] run scoreboard players add @s[distance=..3.5,advancements={system:onattack/for_player=true}] TotalKill 1
execute if entity @a[tag=Death] run playsound minecraft:entity.lightning_bolt.thunder player @a ~ ~ ~ 1 0.9 1
execute if entity @a[tag=Death] as @s[distance=..3.5,advancements={system:onattack/for_player=true}] run function system:main/kill
execute if entity @a[tag=Death] as @a[tag=Death] if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={UseRuleSelect=1}] run function system:mode/1
execute if entity @a[tag=Death] as @a[tag=Death] if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={UseRuleSelect=2}] run function system:mode/2
execute if entity @a[tag=Death] as @a[tag=Death] if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={UseRuleSelect=3}] run function system:mode/3
tag @a remove Death
advancement revoke @a only system:ondamage/for_player
advancement revoke @s only system:onattack/for_player
tellraw @a[team=OP,tag=DebugView] [{"text":"[DEBUG] ","color":"dark_aqua"},{"selector":"@s","color":"dark_aqua"},{"text":" is strike weapon","color":"dark_aqua"}]