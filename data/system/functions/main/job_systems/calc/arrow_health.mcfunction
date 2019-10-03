#ダメージ処理
execute unless entity @s[nbt={ActiveEffects:[{Id:26b}]}] if entity @s[advancements={system:ondamage/is_projectile=true}] run scoreboard players operation @s Health -= $onHitDamage AddTmp
execute unless entity @s[nbt={ActiveEffects:[{Id:26b}]}] if entity @s[advancements={system:ondamage/is_gravity_arrow=true}] run scoreboard players operation @s Health -= $ArrowDamageA AddTmp
execute unless entity @s[nbt={ActiveEffects:[{Id:26b}]}] if entity @s[advancements={system:ondamage/is_chase_arrow=true}] run scoreboard players operation @s Health -= $ArrowDamageB AddTmp
##補正
execute unless entity @s[nbt={ActiveEffects:[{Id:26b}]}] if entity @s[advancements={system:ondamage/is_projectile=true},nbt={ActiveEffects:[{Id:5b}]}] run scoreboard players operation @s Health -= $ATKBonus AddTmp
execute unless entity @s[nbt={ActiveEffects:[{Id:26b}]}] if entity @s[advancements={system:ondamage/is_gravity_arrow=true},nbt={ActiveEffects:[{Id:5b}]}] run scoreboard players operation @s Health -= $ATKBonus AddTmp
execute unless entity @s[nbt={ActiveEffects:[{Id:26b}]}] if entity @s[advancements={system:ondamage/is_chase_arrow=true},nbt={ActiveEffects:[{Id:5b}]}] run scoreboard players operation @s Health -= $ATKBonus AddTmp
tellraw @a[team=OP,tag=DebugView] [{"text":"[DEBUG] ","color":"dark_aqua"},{"selector":"@s","color":"dark_aqua"},{"text":" on hit damage","color":"dark_aqua"}]
##死亡処理
#tag @s[scores={Health=..0},advancements={system:ondamage/is_projectile=true}] add ArrowDeath
#tag @s[scores={Health=..0},advancements={system:ondamage/is_gravity_arrow=true}] add ArrowDeath
#tag @s[scores={Health=..0},advancements={system:ondamage/is_chase_arrow=true}] add ArrowDeath
#execute if entity @s[tag=ArrowDeath] run playsound minecraft:entity.lightning_bolt.thunder player @a ~ ~ ~ 1 0.9 1
#execute if entity @s[tag=ArrowDeath] as @a[advancements={system:onattack/is_projectile=true}] run function system:main/arrow_kill
#execute if entity @s[tag=ArrowDeath] if entity @e[tag=SM,scores={UseRuleSelect=1}] run function system:mode/1
#execute if entity @s[tag=ArrowDeath] if entity @e[tag=SM,scores={UseRuleSelect=2}] run function system:mode/2
#execute if entity @s[tag=ArrowDeath] if entity @e[tag=SM,scores={UseRuleSelect=3}] run function system:mode/3
#tag @s remove ArrowDeath
#advancement revoke @s only system:ondamage/is_projectile
#advancement revoke @s only system:ondamage/is_gravity_arrow
#advancement revoke @s only system:ondamage/is_chase_arrow