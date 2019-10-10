##エフェクト付与
effect give @a[team=Escape,dx=2,dy=0,dz=2] minecraft:blindness 5 0 true
effect give @a[team=Escape,dx=2,dy=0,dz=2] minecraft:slowness 5 0 true
effect give @a[team=Escape,dx=2,dy=0,dz=2] minecraft:glowing 5 0 true
effect give @a[team=Escape,dx=2,dy=0,dz=2] minecraft:unluck 5 0 true
effect clear @a[team=Escape,dx=2,dy=0,dz=2] minecraft:invisibility
effect clear @a[team=Escape,dx=2,dy=0,dz=2] minecraft:speed

##メッセージ送信
tellraw @a[team=Escape,dx=2,dy=0,dz=2] {"text":"トラップを踏んでしまった！","color":"red"}
execute if entity @a[team=Escape,dx=2,dy=0,dz=2] as @a[team=Hunter] positioned ~1 ~ ~1 if score @s UserID = @e[tag=Trap,distance=0,limit=1] UserID run tellraw @s {"text":"トラップに誰かが引っかかったようだ...","color":"aqua"}
execute if entity @a[team=Escape,distance=..1] as @a[team=Hunter,distance=..30] unless score @s UserID = @e[tag=Trap,distance=0,limit=1] UserID run tellraw @a {"text":"近くのトラップに誰か引っかかったようだ...","color":"green"}
playsound minecraft:block.anvil.place block @a[team=Escape,dx=2,dy=0,dz=2] ~ ~ ~ 1 0.4

##ダメージ処理
#execute if entity @a[team=Escape,dx=2,dy=0,dz=2] run effect give @a[dx=2,dy=0,dz=2] minecraft:instant_damage 1 0 true
#execute if entity @a[team=Escape,dx=2,dy=0,dz=2] run scoreboard players operation @a[dx=2,dy=0,dz=2] Health = $TrapDamage Ver
#execute if entity @a[team=Escape,dx=2,dy=0,dz=2] if entity @a[dx=2,dy=0,dz=2,scores={Health=..0}] as @a positioned ~1 ~ ~1 if score @s UserID = @e[tag=Trap,distance=0,limit=1] UserID at @a[dx=2,dy=0,dz=2] run function system:main/job_systems/calc/skill

##パーティクル
scoreboard players add @s TrapParticle 1
execute if entity @s[scores={TrapParticle=6..}] run particle minecraft:dust 0.5373 0.1647 0.7765 1 ~1 ~1 ~1 0.3 0.35 0.3 1 1
execute if entity @s[scores={TrapParticle=6..}] run particle minecraft:barrier ~1 ~ ~1 0 0 0 0 1 force @a[team=Hunter]
execute if entity @s[scores={TrapParticle=6..}] run scoreboard players reset @s TrapParticle

#トラップ消去
execute if entity @a[team=Escape,dx=2,dy=0,dz=2] run kill @s