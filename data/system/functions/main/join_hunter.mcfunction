execute if score @s UTSTCount < @s HunterCount run team join Hunter @a[sort=random,limit=1,gamemode=!spectator,team=!OP]
execute if score @s UTSTCount >= @s HunterCount run team join Hunter @a[sort=random,limit=1,gamemode=!spectator,team=!OP,scores={UseTeamSelect=2}]
scoreboard players remove $HunterCountCopy HunterCount 1
execute if score $HunterCountCopy HunterCount matches 1.. run function system:main/join_hunter