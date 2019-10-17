##エフェクト付与
execute if entity @s[tag=Hunter] run effect give @a[team=Escape,dx=2,dy=0,dz=2] minecraft:slowness 8 7 true
execute if entity @s[tag=Hunter] run effect give @a[team=Escape,dx=2,dy=0,dz=2] minecraft:jump_boost 8 128 true
execute if entity @s[tag=Hunter] run effect give @a[team=Escape,dx=2,dy=0,dz=2] minecraft:unluck 8 0 false
execute if entity @s[tag=Hunter] run effect clear @a[team=Escape,dx=2,dy=0,dz=2] minecraft:speed
execute if entity @s[tag=Escape] run effect give @a[team=Hunter,dx=2,dy=0,dz=2] minecraft:slowness 8 7 true
execute if entity @s[tag=Escape] run effect give @a[team=Hunter,dx=2,dy=0,dz=2] minecraft:jump_boost 8 128 true
execute if entity @s[tag=Escape] run effect give @a[team=Hunter,dx=2,dy=0,dz=2] minecraft:unluck 8 0 false
execute if entity @s[tag=Escape] run effect clear @a[team=Hunter,dx=2,dy=0,dz=2] minecraft:speed

##メッセージ送信
execute if entity @s[tag=Hunter] run tellraw @a[team=Escape,dx=2,dy=0,dz=2] {"text":"捕獲ネットを踏んでしまった！","color":"red"}
execute if entity @s[tag=Escape] run tellraw @a[team=Hunter,dx=2,dy=0,dz=2] {"text":"捕獲ネットを踏んでしまった！","color":"red"}
execute if entity @s[tag=Hunter] run playsound minecraft:block.anvil.place block @a[dx=2,dy=0,dz=2] ~ ~ ~ 1 0.4
execute if entity @s[tag=Escape] run playsound minecraft:block.anvil.place block @a[dx=2,dy=0,dz=2] ~ ~ ~ 1 0.4

##ダメージ処理
#execute if entity @a[team=Escape,dx=2,dy=0,dz=2] run effect give @a[dx=2,dy=0,dz=2] minecraft:instant_damage 1 0 true
#execute if entity @a[team=Escape,dx=2,dy=0,dz=2] run scoreboard players operation @a[dx=2,dy=0,dz=2] Health = $TrapDamage Ver
#execute if entity @a[team=Escape,dx=2,dy=0,dz=2] if entity @a[dx=2,dy=0,dz=2,scores={Health=..0}] as @a positioned ~1 ~ ~1 if score @s UserID = @e[tag=Trap,distance=0,limit=1] UserID at @a[dx=2,dy=0,dz=2] run function system:main/job_systems/calc/skill

##パーティクル
scoreboard players add @s TrapParticle 1
execute if entity @s[scores={TrapParticle=6..}] run particle minecraft:dust 0.9725 0.9490 0.9451 1 ~1 ~1 ~1 0.3 0.35 0.3 1 1
execute if entity @s[scores={TrapParticle=6..},tag=Hunter] run particle minecraft:barrier ~1 ~ ~1 0 0 0 0 1 force @a[team=Hunter]
execute if entity @s[scores={TrapParticle=6..},tag=Escape] run particle minecraft:barrier ~1 ~ ~1 0 0 0 0 1 force @a[team=Escape]
execute if entity @s[scores={TrapParticle=6..}] run scoreboard players reset @s TrapParticle

#トラップ消去
execute if entity @s[tag=Hunter] if entity @a[team=Escape,dx=2,dy=0,dz=2] run kill @s
execute if entity @s[tag=Escape] if entity @a[team=Hunter,dx=2,dy=0,dz=2] run kill @s