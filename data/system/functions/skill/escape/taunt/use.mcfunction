execute unless entity @e[tag=SM,limit=1,scores={LoDDeley=0..}] if entity @s[team=Escape] run function random:generation
execute unless entity @e[tag=SM,limit=1,scores={LoDDeley=0..}] if entity @s[team=Escape] run scoreboard players operation @s Random %= $100 Ver
execute unless entity @e[tag=SM,limit=1,scores={LoDDeley=0..}] if entity @s[team=Escape] run scoreboard players add @s Random 1
execute unless entity @e[tag=SM,limit=1,scores={LoDDeley=0..}] if entity @s[team=Escape] if score @s Random > @s LoDCount run function system:skill/escape/taunt/failed
execute unless entity @e[tag=SM,limit=1,scores={LoDDeley=0..}] if entity @s[team=Escape] if score @s Random <= @s LoDCount run function system:skill/escape/taunt/success
execute unless entity @e[tag=SM,limit=1,scores={LoDDeley=0..}] if entity @s[team=Escape] run scoreboard players set @s LoDCT 600
execute unless entity @e[tag=SM,limit=1,scores={LoDDeley=0..}] if entity @s[team=Escape] run scoreboard players set @s LoDCount 0
execute if entity @s[team=!Escape] run scoreboard players set @s LoDCT 1
execute if entity @e[tag=SM,limit=1,scores={LoDDeley=0..}] run scoreboard players set @s LoDCT 1