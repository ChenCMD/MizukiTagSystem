execute if entity @a[team=Escape,dx=2,dy=0,dz=2] run tag @s add ExplodeOn
##エフェクト付与
execute if entity @s[tag=ExplodeOn] run particle minecraft:explosion_emitter ~1 ~ ~1 0 0 0 1 10 force
execute if entity @s[tag=ExplodeOn] run playsound minecraft:entity.generic.explode player @a

#死亡処理
execute if entity @s[tag=ExplodeOn] positioned ~-2 ~-2 ~-2 run effect give @a[dx=6,dy=6,dz=6] minecraft:instant_damage 1 0 true
execute if entity @s[tag=ExplodeOn] positioned ~-2 ~-2 ~-2 run scoreboard players operation @a[nbt=!{ActiveEffects:[{Id:26b}]},dx=6,dy=6,dz=6] Health -= $LandmineDamage Ver
##補正
execute if entity @s[tag=ExplodeOn] at @s as @a if score @s UserID = @e[tag=Landmine,distance=0,limit=1] UserID if entity @s[nbt={ActiveEffects:[{Id:5b}]}] positioned ~-2 ~-2 ~-2 run scoreboard players operation @a[nbt=!{ActiveEffects:[{Id:26b}]},dx=6,dy=6,dz=6] Health -= $ATKBonus Ver

execute if entity @s[tag=ExplodeOn] run tag @s add kill
execute if entity @s[tag=ExplodeOn] positioned ~-2 ~-2 ~-2 if entity @a[scores={Health=..0},dx=6,dy=6,dz=6] at @s as @a if score @s UserID = @e[tag=Landmine,distance=0,limit=1] UserID positioned ~-2 ~-2 ~-2 at @a[scores={Health=..0},dx=6,dy=6,dz=6] run function system:main/job_systems/calc/skill


##パーティクル
scoreboard players add @s TrapParticle 1
execute if entity @s[scores={TrapParticle=6..}] run particle minecraft:dust 0.3137 0.08627 0.09020 1 ~1 ~1 ~1 0.3 0.35 0.3 1 1
execute if entity @s[scores={TrapParticle=6..}] run particle minecraft:barrier ~1 ~ ~1 0 0 0 0 1 force @a[team=Hunter]
execute if entity @s[scores={TrapParticle=6..}] run scoreboard players reset @s TrapParticle