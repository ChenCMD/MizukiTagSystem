tag @s remove ChaseArrowReady
tag @s remove GravityArrowReady
execute if entity @s[tag=!ChaseArrowReady,tag=!GravityArrowReady,team=Hunter] run tag @s add GravityArrowReady
tag @s[team=!Wait] add ArrowGRemove
scoreboard players reset @s use_arrow_g