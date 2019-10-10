function random:generation
scoreboard players operation @s Random %= $7 Ver
scoreboard players add @s Random 1
execute if entity @s[scores={Random=1}] run tag @s add FlashSRemove
execute if entity @s[scores={Random=2}] run tag @s add FlashMRemove
execute if entity @s[scores={Random=3}] run tag @s add ArrowGRemove
execute if entity @s[scores={Random=4}] run tag @s add ArrowCRemove
execute if entity @s[scores={Random=5}] run tag @s add TrapRemove
execute if entity @s[scores={Random=6}] run tag @s add LandmineRemove
execute if entity @s[scores={Random=7}] run tag @s add TerritoryTRemove
scoreboard players operation @s SkillNum = @s Random
scoreboard players reset @s Random