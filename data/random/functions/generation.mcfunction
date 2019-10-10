scoreboard players operation $Rand_X Ver += $Rand_Modifier Ver
scoreboard players operation $Rand_X Ver *= $Rand_A Ver
scoreboard players operation $Rand_X Ver %= $Rand_M Ver
scoreboard players operation @s Random = $Rand_X Ver
scoreboard players add $RandUseCount Random 1
execute if score $RandUseCount Random matches 10.. as @e[tag=SM] at @s positioned ~ ~-5 ~ run function random:modifier_gene
#execute if entity @s[scores={Random=0..24}] run tellraw @a [{"score":{"name":"@s","objective":"Random"},"color":"gold"},{"text":" <","color":"white"},{"score":{"name":"$Rand_X","objective":"Ver"},"color":"light_purple"},{"text":">","color":"white"}]
#execute if entity @s[scores={Random=25..49}] run tellraw @a [{"score":{"name":"@s","objective":"Random"},"color":"green"},{"text":" <","color":"white"},{"score":{"name":"$Rand_X","objective":"Ver"},"color":"light_purple"},{"text":">","color":"white"}]
#execute if entity @s[scores={Random=50..74}] run tellraw @a [{"score":{"name":"@s","objective":"Random"},"color":"yellow"},{"text":" <","color":"white"},{"score":{"name":"$Rand_X","objective":"Ver"},"color":"light_purple"},{"text":">","color":"white"}]
#execute if entity @s[scores={Random=75..99}] run tellraw @a [{"score":{"name":"@s","objective":"Random"},"color":"red"},{"text":" <","color":"white"},{"score":{"name":"$Rand_X","objective":"Ver"},"color":"light_purple"},{"text":">","color":"white"}]