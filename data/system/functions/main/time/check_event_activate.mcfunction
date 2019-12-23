scoreboard players operation $GameTimeCopy Ver = @s GameTimeB
scoreboard players operation $GameTimeCopy Ver %= $EventInterval Ver
execute if score $GameTimeCopy Ver matches 0 run function system:event/activate