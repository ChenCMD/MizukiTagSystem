execute as @e[tag=SM,scores={PlayersCount=0}] run function system:main/end
execute as @e[tag=SM,scores={PlayersCount=0}] run tag @s remove GameTime_Yes
execute as @e[tag=SM,scores={PlayersCount=0}] run tag @s remove GameEndSystem_Confirm
execute as @e[tag=SM,scores={GameTimeB=0}] run function system:main/end
execute as @e[tag=SM,scores={GameTimeB=0}] run tag @s remove GameTime_Yes
execute as @e[tag=SM,scores={GameTimeB=0}] run tag @s remove GameEndSystem_Confirm