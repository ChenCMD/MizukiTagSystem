##パーティクル
scoreboard players add @s TrapParticle 1
execute if entity @s[scores={TrapParticle=15..}] positioned ~-0.5 ~ ~-0.5 run particle minecraft:dust 1 0.5 0 0.75 ~00.500000 ~0.2 ~02.500000 0 0 0 1 1
execute if entity @s[scores={TrapParticle=15..}] positioned ~-0.5 ~ ~-0.5 run particle minecraft:dust 1 0.5 0 0.75 ~-0.265366 ~0.2 ~02.347832 0 0 0 1 1
execute if entity @s[scores={TrapParticle=15..}] positioned ~-0.5 ~ ~-0.5 run particle minecraft:dust 1 0.5 0 0.75 ~-0.914213 ~0.2 ~01.914213 0 0 0 1 1
execute if entity @s[scores={TrapParticle=15..}] positioned ~-0.5 ~ ~-0.5 run particle minecraft:dust 1 0.5 0 0.75 ~-1.347759 ~0.2 ~01.265543 0 0 0 1 1
execute if entity @s[scores={TrapParticle=15..}] positioned ~-0.5 ~ ~-0.5 run particle minecraft:dust 1 0.5 0 0.75 ~-1.500000 ~0.2 ~00.500000 0 0 0 1 1
execute if entity @s[scores={TrapParticle=15..}] positioned ~-0.5 ~ ~-0.5 run particle minecraft:dust 1 0.5 0 0.75 ~-1.347759 ~0.2 ~-0.265543 0 0 0 1 1
execute if entity @s[scores={TrapParticle=15..}] positioned ~-0.5 ~ ~-0.5 run particle minecraft:dust 1 0.5 0 0.75 ~-0.914213 ~0.2 ~-0.914213 0 0 0 1 1
execute if entity @s[scores={TrapParticle=15..}] positioned ~-0.5 ~ ~-0.5 run particle minecraft:dust 1 0.5 0 0.75 ~-0.265366 ~0.2 ~-1.347832 0 0 0 1 1
execute if entity @s[scores={TrapParticle=15..}] positioned ~-0.5 ~ ~-0.5 run particle minecraft:dust 1 0.5 0 0.75 ~00.500000 ~0.2 ~-1.500000 0 0 0 1 1
execute if entity @s[scores={TrapParticle=15..}] positioned ~-0.5 ~ ~-0.5 run particle minecraft:dust 1 0.5 0 0.75 ~01.265366 ~0.2 ~-1.347832 0 0 0 1 1
execute if entity @s[scores={TrapParticle=15..}] positioned ~-0.5 ~ ~-0.5 run particle minecraft:dust 1 0.5 0 0.75 ~01.914213 ~0.2 ~-0.914213 0 0 0 1 1
execute if entity @s[scores={TrapParticle=15..}] positioned ~-0.5 ~ ~-0.5 run particle minecraft:dust 1 0.5 0 0.75 ~02.347759 ~0.2 ~-0.265543 0 0 0 1 1
execute if entity @s[scores={TrapParticle=15..}] positioned ~-0.5 ~ ~-0.5 run particle minecraft:dust 1 0.5 0 0.75 ~02.500000 ~0.2 ~00.500000 0 0 0 1 1
execute if entity @s[scores={TrapParticle=15..}] positioned ~-0.5 ~ ~-0.5 run particle minecraft:dust 1 0.5 0 0.75 ~02.347759 ~0.2 ~01.265543 0 0 0 1 1
execute if entity @s[scores={TrapParticle=15..}] positioned ~-0.5 ~ ~-0.5 run particle minecraft:dust 1 0.5 0 0.75 ~01.914213 ~0.2 ~01.914213 0 0 0 1 1
execute if entity @s[scores={TrapParticle=15..}] positioned ~-0.5 ~ ~-0.5 run particle minecraft:dust 1 0.5 0 0.75 ~01.265366 ~0.2 ~02.347832 0 0 0 1 1
execute if entity @s[scores={TrapParticle=15..}] run scoreboard players reset @s TrapParticle

##エフェクト付与
effect give @a[team=Hunter,distance=..2.5] minecraft:slowness 15 10 true
effect give @a[team=Hunter,distance=..2.5] minecraft:jump_boost 15 128 true
effect give @a[team=Hunter,distance=..2.5] minecraft:unluck 15 0 false
effect give @a[team=Hunter,distance=..2.5] minecraft:blindness 15 0 true
execute if entity @a[team=Hunter,distance=..2.5] at @a[team=Hunter,distance=..2.5] run tp @s ~ ~0.005 ~
execute if entity @a[team=Hunter,distance=..2.5] at @a[team=Hunter,distance=..2.5] run summon area_effect_cloud ~ ~1.5 ~ {Particle:"item cookie",ReapplicationDelay:2147483647,Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:300,DurationOnUse:0f,Age:0,WaitTime:0}
##メッセージ送信
tellraw @a[team=Hunter,distance=..2.5] {"text":"お菓子だ！ モグモグ...","color":"gold"}
playsound minecraft:entity.player.burp master @a[team=Hunter,distance=..2.5]

#トラップ消去
execute if entity @a[team=Hunter,distance=..2.5] run kill @s