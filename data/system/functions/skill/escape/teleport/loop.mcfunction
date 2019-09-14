tp @s ^ ^ ^0.2
scoreboard players add @s TPCount 1
execute if score @s TPCount < $TeleportLimit AddTmp at @s if block ^ ^ ^0.2 #system:targets if block ^ ^1 ^0.2 #system:targets run function system:skill/escape/teleport/loop
particle minecraft:portal ~ ~0.6 ~ 0.01 0.01 0.01 0 5 force