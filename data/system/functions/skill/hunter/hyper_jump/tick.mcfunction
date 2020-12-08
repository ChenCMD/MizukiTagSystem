execute as @a[scores={Sneak=1..},nbt={SelectedItem:{tag:{HyperJump:1b}}}] at @s run function system:skill/hunter/hyper_jump/act
execute as @a unless entity @s[scores={Sneak=0..}] run scoreboard players reset @s HighJump
execute as @a[team=Hunter] unless entity @s[scores={Sneak=0..}] if entity @s[nbt={ActiveEffects:[{Id:2b,Amplifier:9b}]}] run effect clear @s minecraft:slowness
execute as @a[team=Hunter] unless entity @s[scores={Sneak=0..}] if entity @s[nbt=!{ActiveEffects:[{Id:8b,Amplifier:-128b}]}] run effect clear @s minecraft:jump_boost
execute as @a[scores={Jump=0..}] run scoreboard players reset @s HighJump
execute as @a[team=Hunter,scores={Jump=0..},nbt={ActiveEffects:[{Id:2b,Amplifier:9b}]}] run effect clear @s minecraft:slowness
execute as @a[team=Hunter,scores={Jump=0..},nbt=!{ActiveEffects:[{Id:8b,Amplifier:-128b}]}] run effect clear @s minecraft:jump_boost
execute as @a[nbt=!{SelectedItem:{tag:{HyperJump:1b}}}] run scoreboard players reset @s HighJump
execute as @a[team=Hunter,nbt={ActiveEffects:[{Id:2b,Amplifier:9b}]},nbt=!{SelectedItem:{tag:{HyperJump:1b}}}] run effect clear @s minecraft:slowness
execute as @a[team=Hunter,nbt=!{SelectedItem:{tag:{HyperJump:1b}}},nbt=!{ActiveEffects:[{Id:8b,Amplifier:-128b}]}] run effect clear @s minecraft:jump_boost
scoreboard players reset @a Jump
scoreboard players reset @a Sneak