#死亡処理
tag @a[distance=0] add SkillDeath
playsound minecraft:entity.lightning_bolt.thunder player @a ~ ~ ~ 1 0.9 1
execute unless score @s UserID = @a[distance=0,limit=1] UserID run function system:main/skill_kill
execute if score @s UserID = @a[distance=0,limit=1] UserID run tellraw @a [{"selector":"@s"},{"text":" は自爆した･･･","color":"gold"}]
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={UseRuleSelect=1}] as @a[distance=0,team=!Hunter] run function system:mode/1
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={UseRuleSelect=2}] as @a[distance=0,team=!Hunter] run function system:mode/2
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f},scores={UseRuleSelect=3}] as @a[distance=0,team=!Hunter] run function system:mode/3
execute as @a[distance=0,team=Hunter] run function system:mode/hunter_death
tag @a remove SkillDeath