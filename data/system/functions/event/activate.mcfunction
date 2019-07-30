#function random:generation
#scoreboard players operation @s Random %= $2 AddTmp
#scoreboard players add @s Random 1
#execute if score @s Random matches 1 run function system:event/fixed_time_flash/set
#execute if score @s Random matches 2 run function system:event/
function system:event/fixed_time_flash/set