execute if score @s UTSTCount < @s HunterCount run team join Hunter @a[gamemode=!spectator,team=!OP,team=!Hunter,sort=random,limit=1]
execute if score @s UTSTCount >= @s HunterCount run team join Hunter @a[gamemode=!spectator,team=!OP,team=!Hunter,scores={UseTeamSelect=2},sort=random,limit=1]
scoreboard players remove $HunterCountCopy HunterCount 1
execute if score $HunterCountCopy HunterCount matches 1.. run function system:main/join_hunter