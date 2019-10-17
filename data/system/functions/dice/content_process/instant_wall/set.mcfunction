execute rotated ~ 0 positioned ^01 ^0 ^-1.3 if block ~ ~ ~ air run summon minecraft:armor_stand ~ ~-0.5 ~ {Tags:["InstantWall"],NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1}
execute rotated ~ 0 positioned ^00 ^0 ^-1.3 if block ~ ~ ~ air run summon minecraft:armor_stand ~ ~-0.5 ~ {Tags:["InstantWall"],NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1}
execute rotated ~ 0 positioned ^-1 ^0 ^-1.3 if block ~ ~ ~ air run summon minecraft:armor_stand ~ ~-0.5 ~ {Tags:["InstantWall"],NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1}
execute rotated ~ 0 positioned ^01 ^1 ^-1.3 if block ~ ~ ~ air run summon minecraft:armor_stand ~ ~-0.5 ~ {Tags:["InstantWall"],NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1}
execute rotated ~ 0 positioned ^00 ^1 ^-1.3 if block ~ ~ ~ air run summon minecraft:armor_stand ~ ~-0.5 ~ {Tags:["InstantWall"],NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1}
execute rotated ~ 0 positioned ^-1 ^1 ^-1.3 if block ~ ~ ~ air run summon minecraft:armor_stand ~ ~-0.5 ~ {Tags:["InstantWall"],NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1}
execute rotated ~ 0 positioned ^01 ^2 ^-1.3 if block ~ ~ ~ air run summon minecraft:armor_stand ~ ~-0.5 ~ {Tags:["InstantWall"],NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1}
execute rotated ~ 0 positioned ^00 ^2 ^-1.3 if block ~ ~ ~ air run summon minecraft:armor_stand ~ ~-0.5 ~ {Tags:["InstantWall"],NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1}
execute rotated ~ 0 positioned ^-1 ^2 ^-1.3 if block ~ ~ ~ air run summon minecraft:armor_stand ~ ~-0.5 ~ {Tags:["InstantWall"],NoGravity:1b,Small:1,Marker:1b,Invisible:1,Invulnerable:1}

execute as @e[tag=InstantWall,nbt={PortalCoolDown:0}] at @s run setblock ~ ~ ~ glass
execute as @e[tag=InstantWall,nbt={PortalCoolDown:0}] run data merge entity @s {PortalCoolDown:401}