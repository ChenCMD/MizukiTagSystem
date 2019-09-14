tellraw @a [{"text":"[ダイス] ","color":"light_purple","bold":true},{"selector":"@s","bold":false},{"text":"はダイスの取り扱いを間違えて死んでしまった...","color":"red","bold":false}]
scoreboard players set @s Health 0
playsound minecraft:entity.lightning_bolt.thunder player @a ~ ~ ~ 1 0.9 1
execute as @s[team=Hunter] run function system:mode/hunter_death
execute if entity @e[tag=SM,scores={UseRuleSelect=1}] as @s[team=Escape] run function system:mode/1
execute if entity @e[tag=SM,scores={UseRuleSelect=2}] as @s[team=Escape] run function system:mode/2
execute if entity @e[tag=SM,scores={UseRuleSelect=3}] as @s[team=Escape] run function system:mode/3