##エフェクト付与
effect give @a[team=Escape,dx=19,dy=0,dz=19] minecraft:slowness 10 1 true

##パーティクル
scoreboard players add @s TrapParticle 1
execute if entity @s[scores={TrapParticle=6..}] run particle minecraft:dust 0.2196 0.2196 0.2980 1 ~3.5 ~1 ~3.5 0.4 0.35 0.4 1 1
execute if entity @s[scores={TrapParticle=6..}] run particle minecraft:barrier ~3.5 ~ ~3.5 0 0 0 0 1 force @a[team=Hunter]
execute if entity @s[scores={TrapParticle=6..}] run scoreboard players reset @s TrapParticle