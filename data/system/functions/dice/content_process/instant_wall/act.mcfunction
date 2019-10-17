particle minecraft:portal ~ ~-0.2 ~ 0.06 0.06 0.06 0.4 1
execute if data entity @s {PortalCooldown:1} run setblock ~ ~ ~ air destroy
execute if data entity @s {PortalCooldown:1} run kill @s