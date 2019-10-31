#一回目
function random:generation
scoreboard players operation @s Random %= $7 Ver
scoreboard players add @s Random 1
execute if entity @s[scores={Random=1}] run tag @s add G.101
execute if entity @s[scores={Random=2}] run tag @s add G.102
execute if entity @s[scores={Random=3}] run tag @s add G.103
execute if entity @s[scores={Random=4}] run tag @s add G.104
execute if entity @s[scores={Random=5}] run tag @s add G.105
execute if entity @s[scores={Random=6}] run tag @s add G.106
execute if entity @s[scores={Random=7}] run tag @s add G.107
scoreboard players operation @s SkillNum = @s Random
#二回目
function system:skill/skill_duplication
execute if entity @s[scores={Random=1}] run tag @s add G.101
execute if entity @s[scores={Random=2}] run tag @s add G.102
execute if entity @s[scores={Random=3}] run tag @s add G.103
execute if entity @s[scores={Random=4}] run tag @s add G.104
execute if entity @s[scores={Random=5}] run tag @s add G.105
execute if entity @s[scores={Random=6}] run tag @s add G.106
execute if entity @s[scores={Random=7}] run tag @s add G.107
function system:skill/branch/give