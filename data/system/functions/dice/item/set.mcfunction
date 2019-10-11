function random:generation
scoreboard players operation @s Random %= $6 Ver
scoreboard players add @s Random 1
execute if entity @s[scores={Random=1}] run function system:dice/item/1
execute if entity @s[scores={Random=2}] run function system:dice/item/2
execute if entity @s[scores={Random=3}] run function system:dice/item/3
execute if entity @s[scores={Random=4}] run function system:dice/item/4
execute if entity @s[scores={Random=5}] run function system:dice/item/5
execute if entity @s[scores={Random=6}] run function system:dice/item/6