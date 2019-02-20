tag @s remove ChaseArrowReady
tag @s remove GravityArrowReady
execute if entity @s[tag=!ChaseArrowReady,tag=!GravityArrowReady,team=Hunter] run tag @s add ChaseArrowReady
tag @s[team=!Wait] add ArrowCRemove
scoreboard players reset @s use_arrow_c