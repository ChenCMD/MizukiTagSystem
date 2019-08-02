particle minecraft:dust 1 0 0 1 ~12.5000 ~ ~0.5000 0 0 0 1 1
particle minecraft:dust 1 0 0 1 ~12.3973 ~ ~2.0659 0 0 0 1 1
particle minecraft:dust 1 0 0 1 ~12.0913 ~ ~3.6050 0 0 0 1 1
particle minecraft:dust 1 0 0 1 ~11.5865 ~ ~5.0922 0 0 0 1 1
particle minecraft:dust 1 0 0 1 ~10.8924 ~ ~6.4996 0 0 0 1 1
particle minecraft:dust 1 0 0 1 ~10.0207 ~ ~7.8045 0 0 0 1 1
particle minecraft:dust 1 0 0 1 ~8.9852 ~ ~8.9852 0 0 0 1 1
particle minecraft:dust 1 0 0 1 ~7.8045 ~ ~10.0207 0 0 0 1 1
particle minecraft:dust 1 0 0 1 ~6.4996 ~ ~10.8924 0 0 0 1 1
particle minecraft:dust 1 0 0 1 ~5.0922 ~ ~11.5865 0 0 0 1 1
particle minecraft:dust 1 0 0 1 ~3.6050 ~ ~12.0913 0 0 0 1 1
particle minecraft:dust 1 0 0 1 ~2.0659 ~ ~12.3973 0 0 0 1 1
particle minecraft:dust 1 0 0 1 ~0.5000 ~ ~12.5000 0 0 0 1 1
particle minecraft:dust 1 0 0 1 ~-1.0660 ~ ~12.3973 0 0 0 1 1
particle minecraft:dust 1 0 0 1 ~-2.6051 ~ ~12.0913 0 0 0 1 1
particle minecraft:dust 1 0 0 1 ~-4.0923 ~0.5 ~11.5869 0 0 0 1 1
particle minecraft:dust 1 0 0 1 ~-5.4997 ~0.5 ~10.8924 0 0 0 1 1
particle minecraft:dust 1 0 0 1 ~-6.8046 ~0.5 ~10.0207 0 0 0 1 1
particle minecraft:dust 1 0 0 1 ~-7.9853 ~0.5 ~8.9852 0 0 0 1 1
particle minecraft:dust 1 0 0 1 ~-9.0201 ~0.5 ~7.8054 0 0 0 1 1
particle minecraft:dust 1 0 0 1 ~-9.8920 ~0.5 ~6.5006 0 0 0 1 1
particle minecraft:dust 1 0 0 1 ~-10.5866 ~0.5 ~5.0932 0 0 0 1 1
particle minecraft:dust 1 0 0 1 ~-11.0911 ~0.5 ~3.6061 0 0 0 1 1
particle minecraft:dust 1 0 0 1 ~-11.3973 ~0.5 ~2.0670 0 0 0 1 1
particle minecraft:dust 1 0 0 1 ~-11.5000 ~0.5 ~0.5000 0 0 0 1 1
particle minecraft:dust 1 0 0 1 ~-11.3974 ~0.5 ~-1.0660 0 0 0 1 1
particle minecraft:dust 1 0 0 1 ~-11.0914 ~0.5 ~-2.6051 0 0 0 1 1
particle minecraft:dust 1 0 0 1 ~-10.5866 ~0.5 ~-4.0923 0 0 0 1 1
particle minecraft:dust 1 0 0 1 ~-9.8925 ~0.5 ~-5.4997 0 0 0 1 1
particle minecraft:dust 1 0 0 1 ~-9.0208 ~0.5 ~-6.8046 0 0 0 1 1
particle minecraft:dust 1 0 0 1 ~-7.9861 ~0.5 ~-7.9845 0 0 0 1 1
particle minecraft:dust 1 0 0 1 ~-6.8055 ~0.5 ~-9.0201 0 0 0 1 1
particle minecraft:dust 1 0 0 1 ~-5.5007 ~0.5 ~-9.8920 0 0 0 1 1
particle minecraft:dust 1 0 0 1 ~-4.0933 ~0.5 ~-10.5862 0 0 0 1 1
particle minecraft:dust 1 0 0 1 ~-2.6062 ~0.5 ~-11.0911 0 0 0 1 1
particle minecraft:dust 1 0 0 1 ~-1.0671 ~0.5 ~-11.3973 0 0 0 1 1
particle minecraft:dust 1 0 0 1 ~0.5000 ~0.5 ~-11.5000 0 0 0 1 1
particle minecraft:dust 1 0 0 1 ~2.0659 ~0.5 ~-11.3973 0 0 0 1 1
particle minecraft:dust 1 0 0 1 ~3.6050 ~0.5 ~-11.0911 0 0 0 1 1
particle minecraft:dust 1 0 0 1 ~5.0922 ~0.5 ~-10.5866 0 0 0 1 1
particle minecraft:dust 1 0 0 1 ~6.4996 ~0.5 ~-9.7920 0 0 0 1 1
particle minecraft:dust 1 0 0 1 ~7.8045 ~0.5 ~-9.0201 0 0 0 1 1
particle minecraft:dust 1 0 0 1 ~8.9852 ~0.5 ~-7.9853 0 0 0 1 1
particle minecraft:dust 1 0 0 1 ~10.0200 ~0.5 ~-6.8046 0 0 0 1 1
particle minecraft:dust 1 0 0 1 ~10.8919 ~0.5 ~-5.4997 0 0 0 1 1
particle minecraft:dust 1 0 0 1 ~11.5865 ~0.5 ~-4.0923 0 0 0 1 1
particle minecraft:dust 1 0 0 1 ~12.0910 ~0.5 ~-2.6051 0 0 0 1 1
particle minecraft:dust 1 0 0 1 ~12.3972 ~0.5 ~-1.0660 0 0 0 1 1
execute if score @s SuperBomb matches ..62 run particle minecraft:enchant ~ ~2.8 ~ 0 0 0 10 150 normal
scoreboard players add @s SuperBomb 1
execute if score @s SuperBomb matches 0..95 run playsound minecraft:entity.tnt.primed master @a ~ ~ ~ 1 0.5
execute if score @s SuperBomb matches 100.. run particle minecraft:explosion_emitter ~ ~ ~ 2 2 2 0 100
execute if score @s SuperBomb matches 100.. run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2
execute if score @s[tag=Hunter] SuperBomb matches 100.. if entity @a[distance=..12,team=Escape] run playsound minecraft:entity.lightning_bolt.thunder player @a ~ ~ ~ 1 0.9 1
execute if score @s[tag=Escape] SuperBomb matches 100.. if entity @a[distance=..12,team=Hunter] run playsound minecraft:entity.lightning_bolt.thunder player @a ~ ~ ~ 1 0.9 1
execute if score @s[tag=Hunter] SuperBomb matches 100.. run scoreboard players set @a[distance=..12,team=Escape] Health 0
execute if score @s[tag=Hunter] SuperBomb matches 100.. run execute if entity @e[tag=SM,scores={UseRuleSelect=1}] as @a[distance=..12,team=Escape] run function system:mode/1
execute if score @s[tag=Hunter] SuperBomb matches 100.. run execute if entity @e[tag=SM,scores={UseRuleSelect=2}] as @a[distance=..12,team=Escape] run function system:mode/2
execute if score @s[tag=Hunter] SuperBomb matches 100.. run execute if entity @e[tag=SM,scores={UseRuleSelect=3}] as @a[distance=..12,team=Escape] run function system:mode/3
execute if score @s[tag=Escape] SuperBomb matches 100.. run scoreboard players set @a[distance=..12,team=Hunter] Health 0
execute if score @s[tag=Escape] SuperBomb matches 100.. run execute as @a[distance=..12,team=Hunter] run function system:mode/hunter_death
execute if score @s SuperBomb matches 100.. run kill @s