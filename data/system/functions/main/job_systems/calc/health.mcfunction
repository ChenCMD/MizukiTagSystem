##ベースダメージ
execute unless entity @s[nbt={ActiveEffects:[{Id:26b}]}] run scoreboard players operation @s Health -= $onAttackDamage Ver
##補正
execute unless entity @s[nbt={ActiveEffects:[{Id:26b}]}] if entity @a[distance=..3.5,advancements={system:onattack/for_player=true},nbt={ActiveEffects:[{Id:5b}]}] run scoreboard players operation @s Health -= $ATKBonus Ver
say 1 @a[distance=..3.5,advancements={system:onattack/for_player=true}]
say 2 @a[advancements={system:onattack/for_player=true}]
#死亡処理
tag @s[scores={Health=..0}] add Death
execute if entity @s[tag=Death] run scoreboard players add @a[distance=..3.5,advancements={system:onattack/for_player=true}] TotalKill 1
execute if entity @s[tag=Death] run scoreboard players add @a[distance=..3.5,advancements={system:onattack/for_player=true}] kills_in_match 1
execute if entity @s[tag=Death] run playsound minecraft:entity.lightning_bolt.thunder player @a ~ ~ ~ 1 0.9 1
execute if entity @s[tag=Death] as @a[distance=..3.5,advancements={system:onattack/for_player=true}] run function system:main/kill
execute if entity @s[tag=Death] as @s[tag=Death] if entity @e[tag=SM,scores={UseRuleSelect=1}] run function system:mode/1
execute if entity @s[tag=Death] as @s[tag=Death] if entity @e[tag=SM,scores={UseRuleSelect=2}] run function system:mode/2
execute if entity @s[tag=Death] as @s[tag=Death] if entity @e[tag=SM,scores={UseRuleSelect=3}] run function system:mode/3
tag @s remove Death
advancement revoke @s only system:ondamage/for_player
advancement revoke @a only system:onattack/for_player