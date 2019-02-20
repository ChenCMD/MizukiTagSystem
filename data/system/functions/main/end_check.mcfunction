execute as @e[tag=SM,nbt={FallDistance:138204.6f},scores={PlayersCount=0}] run function system:main/end
execute as @e[tag=SM,nbt={FallDistance:138204.6f},scores={PlayersCount=0}] run tag @s remove GameTime_Yes
execute as @e[tag=SM,nbt={FallDistance:138204.6f},scores={PlayersCount=0}] run tag @s remove GameEndSystem_Confirm
execute as @e[tag=SM,nbt={FallDistance:138204.6f},scores={GameTimeB=0}] run function system:main/end
execute as @e[tag=SM,nbt={FallDistance:138204.6f},scores={GameTimeB=0}] run tag @s remove GameTime_Yes
execute as @e[tag=SM,nbt={FallDistance:138204.6f},scores={GameTimeB=0}] run tag @s remove GameEndSystem_Confirm