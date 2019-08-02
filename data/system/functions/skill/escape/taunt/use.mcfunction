scoreboard players reset @s LoDDrop
execute unless entity @e[tag=SM,limit=1,scores={LoDDeley=0..}] if entity @s[team=Escape] run function random:generation
execute unless entity @e[tag=SM,limit=1,scores={LoDDeley=0..}] if entity @s[team=Escape] run scoreboard players operation @s Random %= $100 AddTmp
execute unless entity @e[tag=SM,limit=1,scores={LoDDeley=0..}] if entity @s[team=Escape] run scoreboard players add @s Random 1
execute unless entity @e[tag=SM,limit=1,scores={LoDDeley=0..}] if entity @s[team=Escape] if score @s LoDCount matches 3 if score @s Random < $5 AddTmp run function system:skill/escape/taunt/success
execute unless entity @e[tag=SM,limit=1,scores={LoDDeley=0..}] if entity @s[team=Escape] if score @s LoDCount matches 3 if score @s Random >= $5 AddTmp run function system:skill/escape/taunt/failed
execute unless entity @e[tag=SM,limit=1,scores={LoDDeley=0..}] if entity @s[team=Escape] if score @s LoDCount matches 2 if score @s Random < $20 AddTmp run function system:skill/escape/taunt/success
execute unless entity @e[tag=SM,limit=1,scores={LoDDeley=0..}] if entity @s[team=Escape] if score @s LoDCount matches 2 if score @s Random >= $20 AddTmp run function system:skill/escape/taunt/failed
execute unless entity @e[tag=SM,limit=1,scores={LoDDeley=0..}] if entity @s[team=Escape] if score @s LoDCount matches 1 if score @s Random < $35 AddTmp run function system:skill/escape/taunt/success
execute unless entity @e[tag=SM,limit=1,scores={LoDDeley=0..}] if entity @s[team=Escape] if score @s LoDCount matches 1 if score @s Random >= $35 AddTmp run function system:skill/escape/taunt/failed
execute unless entity @e[tag=SM,limit=1,scores={LoDDeley=0..}] if entity @s[team=Escape] if score @s LoDCount matches 0 if score @s Random < $50 AddTmp run function system:skill/escape/taunt/success
execute unless entity @e[tag=SM,limit=1,scores={LoDDeley=0..}] if entity @s[team=Escape] if score @s LoDCount matches 0 if score @s Random >= $50 AddTmp run function system:skill/escape/taunt/failed
execute unless entity @e[tag=SM,limit=1,scores={LoDDeley=0..}] if entity @s[team=Escape] if score @s LoDCount matches ..3 run scoreboard players set @s LoDCT 1
execute unless entity @e[tag=SM,limit=1,scores={LoDDeley=0..}] if entity @s[team=!Escape] run scoreboard players set @s LoDCT 895