function random:generation
scoreboard players operation @s Random %= $6 AddTmp
scoreboard players add @s Random 1
execute if entity @s[scores={Random=1}] run function system:dice/event/1
execute if entity @s[scores={Random=2}] run function system:dice/event/2
execute if entity @s[scores={Random=3}] run function system:dice/event/3
execute if entity @s[scores={Random=4}] run function system:dice/event/4
execute if entity @s[scores={Random=5}] run function system:dice/event/5
execute if entity @s[scores={Random=6}] run function system:dice/event/6