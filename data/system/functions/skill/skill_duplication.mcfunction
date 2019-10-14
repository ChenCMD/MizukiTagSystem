function random:generation
scoreboard players operation @s Random %= $7 Ver
scoreboard players add @s Random 1
execute if score @s SkillNum matches 1..2 if score @s Random matches 1..2 run function system:skill/skill_duplication
execute if score @s SkillNum matches 3..4 if score @s Random matches 3..4 run function system:skill/skill_duplication
execute if score @s SkillNum matches 5..7 if score @s Random matches 5..7 run function system:skill/skill_duplication