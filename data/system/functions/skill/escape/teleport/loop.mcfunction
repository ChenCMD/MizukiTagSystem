tp @s ^ ^ ^0.2
scoreboard players add @s TPCount 1
execute if score @s TPCount < $TeleportLimit Ver at @s if block ^ ^ ^0.2 #system:teleport if block ^ ^1 ^0.2 #system:teleport run function system:skill/escape/teleport/loop
particle minecraft:portal ~ ~0.6 ~ 0.01 0.01 0.01 0 5 force