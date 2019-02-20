function random:generation
scoreboard players operation @s Random %= $7 AddTmp
scoreboard players add @s Random 1
execute if score @s SkillNum = @s Random run function system:skill/skill_duplication