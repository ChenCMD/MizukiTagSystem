#死亡処理
tag @a[scores={Health=..0},advancements={system:ondamage/is_projectile=true}] add ArrowDeath
tag @a[scores={Health=..0},advancements={system:ondamage/is_gravity_arrow=true}] add ArrowDeath
tag @a[scores={Health=..0},advancements={system:ondamage/is_chase_arrow=true}] add ArrowDeath
execute if entity @a[tag=ArrowDeath] run playsound minecraft:entity.lightning_bolt.thunder player @a ~ ~ ~ 1 0.9 1
execute if entity @a[tag=ArrowDeath] as @s[advancements={system:onattack/is_projectile=true}] run function system:main/arrow_kill
execute if entity @a[tag=ArrowDeath] as @a[tag=ArrowDeath] if entity @e[tag=SM,scores={UseRuleSelect=1}] run function system:mode/1
execute if entity @a[tag=ArrowDeath] as @a[tag=ArrowDeath] if entity @e[tag=SM,scores={UseRuleSelect=2}] run function system:mode/2
execute if entity @a[tag=ArrowDeath] as @a[tag=ArrowDeath] if entity @e[tag=SM,scores={UseRuleSelect=3}] run function system:mode/3
tag @a remove ArrowDeath
advancement revoke @s only system:onattack/is_projectile
advancement revoke @a only system:ondamage/is_projectile
advancement revoke @a only system:ondamage/is_gravity_arrow
advancement revoke @a only system:ondamage/is_chase_arrow
give @s arrow
tellraw @a[team=OP,tag=DebugView] [{"text":"[DEBUG] ","color":"dark_aqua"},{"selector":"@s","color":"dark_aqua"},{"text":" is hit arrow","color":"dark_aqua"}]