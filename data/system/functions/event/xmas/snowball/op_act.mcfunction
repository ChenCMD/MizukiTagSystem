execute as @e[tag=OPBall,nbt=!{FallDistance:0f}] at @s run summon armor_stand ~ ~0.5 ~ {Rotation:[45f],Tags:["ParticleCenterPos","ParticleCenterPosA"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PortalCooldown:121}
execute as @e[tag=OPBall,nbt=!{FallDistance:0f}] at @s run summon armor_stand ~ ~0.5 ~ {Rotation:[45f],Tags:["ParticleCenterPos","ParticleCenterPosB"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PortalCooldown:121}
execute as @e[tag=OPBall,nbt=!{FallDistance:0f}] at @s run summon armor_stand ~ ~0.5 ~ {Rotation:[45f],Tags:["ParticleFacing","ParticleFacingA"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PortalCooldown:60}
execute as @e[tag=OPBall,nbt=!{FallDistance:0f}] at @s run summon armor_stand ~ ~0.5 ~ {Rotation:[135f],Tags:["ParticleFacing","ParticleFacingA"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PortalCooldown:60}
execute as @e[tag=OPBall,nbt=!{FallDistance:0f}] at @s run summon armor_stand ~ ~0.5 ~ {Rotation:[215f],Tags:["ParticleFacing","ParticleFacingA"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PortalCooldown:60}
execute as @e[tag=OPBall,nbt=!{FallDistance:0f}] at @s run summon armor_stand ~ ~0.5 ~ {Rotation:[305f],Tags:["ParticleFacing","ParticleFacingA"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PortalCooldown:60}
execute as @e[tag=OPBall,nbt=!{FallDistance:0f}] at @s run summon armor_stand ~ ~0.5 ~ {Rotation:[45f],Tags:["ParticleFacing","ParticleFacingB"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PortalCooldown:60}
execute as @e[tag=OPBall,nbt=!{FallDistance:0f}] at @s run summon armor_stand ~ ~0.5 ~ {Rotation:[135f],Tags:["ParticleFacing","ParticleFacingB"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PortalCooldown:60}
execute as @e[tag=OPBall,nbt=!{FallDistance:0f}] at @s run summon armor_stand ~ ~0.5 ~ {Rotation:[215f],Tags:["ParticleFacing","ParticleFacingB"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PortalCooldown:60}
execute as @e[tag=OPBall,nbt=!{FallDistance:0f}] at @s run summon armor_stand ~ ~0.5 ~ {Rotation:[305f],Tags:["ParticleFacing","ParticleFacingB"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PortalCooldown:60}
tag @e[tag=ParticleFacing,nbt={PortalCooldown:60}] add ParticlePhase
execute as @e[tag=ParticleFacingA,tag=ParticlePhase] at @s run tp @s ^ ^ ^0.28 ~3 ~
execute as @e[tag=ParticleFacingB,tag=ParticlePhase] at @s run tp @s ^ ^ ^0.28 ~-3 ~
execute as @e[tag=ParticleFacing,tag=ParticlePhase] at @s run particle end_rod ~ ~ ~ 0 0 0 0 1 force
execute if entity @e[tag=ParticleFacing,nbt={PortalCooldown:1}] run tag @e[tag=ParticleCenterPos] add ParticlePhase
kill @e[tag=ParticleFacing,nbt={PortalCooldown:1}]
execute as @e[tag=ParticleCenterPosA,tag=ParticlePhase] at @s run tp @s ~ ~ ~ ~1.5 ~
execute as @e[tag=ParticleCenterPosB,tag=ParticlePhase] at @s run tp @s ~ ~ ~ ~-1.5 ~
execute as @e[tag=ParticleCenterPos,tag=ParticlePhase] at @s run particle end_rod ^ ^ ^12 0 0 0 0 1 force
execute as @e[tag=ParticleCenterPos,tag=ParticlePhase] at @s run particle end_rod ^ ^ ^-12 0 0 0 0 1 force
execute as @e[tag=ParticleCenterPos,tag=ParticlePhase] at @s run particle end_rod ^12 ^ ^ 0 0 0 0 1 force
execute as @e[tag=ParticleCenterPos,tag=ParticlePhase] at @s run particle end_rod ^-12 ^ ^ 0 0 0 0 1 force
execute as @e[tag=ParticleCenterPos,tag=ParticlePhase,nbt={PortalCooldown:1}] at @s run particle flame ~ ~ ~ 6 0 6 1 4000 force
kill @e[tag=ParticleCenterPos,tag=ParticlePhase,nbt={PortalCooldown:1}]