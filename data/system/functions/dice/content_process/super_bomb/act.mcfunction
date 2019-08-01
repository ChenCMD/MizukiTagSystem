particle minecraft:enchant ~ ~1.6 ~ 0 0 0 25 150 normal @s
scoreboard players add @s SuperBomb 1
execute if score @s SuperBomb matches 0 run playsound minecraft:block.portal.trigger master @a ~ ~ ~ 1 0.5
execute if score @s SuperBomb matches 33 run playsound minecraft:block.portal.trigger master @a ~ ~ ~ 1 0.5
execute if score @s SuperBomb matches 66 run playsound minecraft:block.portal.trigger master @a ~ ~ ~ 1 0.5
execute if score @s SuperBomb matches 100.. run particle minecraft:explosion_emitter ~ ~ ~ 2 2 2 0 100
execute if score @s SuperBomb matches 100.. run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2
execute if score @s SuperBomb matches 100.. run playsound minecraft:entity.lightning_bolt.thunder player @a ~ ~ ~ 1 0.9 1
execute if score @s[team=Hunter] SuperBomb matches 100.. run scoreboard players set @a[distance=..12,team=Escape] Health 0
execute if score @s[team=Hunter] SuperBomb matches 100.. run execute if entity @e[tag=SM,scores={UseRuleSelect=1}] as @a[distance=..12,team=Escape] run function system:mode/1
execute if score @s[team=Hunter] SuperBomb matches 100.. run execute if entity @e[tag=SM,scores={UseRuleSelect=2}] as @a[distance=..12,team=Escape] run function system:mode/2
execute if score @s[team=Hunter] SuperBomb matches 100.. run execute if entity @e[tag=SM,scores={UseRuleSelect=3}] as @a[distance=..12,team=Escape] run function system:mode/3
execute if score @s[team=Escape] SuperBomb matches 100.. run scoreboard players set @a[distance=..12,team=Hunter] Health 0
execute if score @s[team=Escape] SuperBomb matches 100.. run execute as @a[distance=..12,team=Hunter] run function system:mode/hunter_death
kill @s