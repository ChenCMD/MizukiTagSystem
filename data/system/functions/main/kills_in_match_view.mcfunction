scoreboard players operation #1 kills_in_match > @a[team=Hunter] kills_in_match
execute as @a[team=Hunter] if score @s kills_in_match = #1 kills_in_match run tag @s add Kim1
scoreboard players reset @a[tag=Kim1] kills_in_match

scoreboard players operation #2 kills_in_match > @a[team=Hunter] kills_in_match
execute as @a[team=Hunter] if score @s kills_in_match = #2 kills_in_match run tag @s add Kim2
scoreboard players reset @a[tag=Kim2] kills_in_match

scoreboard players operation #3 kills_in_match > @a[team=Hunter] kills_in_match
execute as @a[team=Hunter] if score @s kills_in_match = #3 kills_in_match run tag @s add Kim3
scoreboard players reset @a[tag=Kim3] kills_in_match

tellraw @a [{"text":"1. ","color":"gold"},{"selector":"@a[tag=Kim1]"},{"score":{"name":"#1","objective":"kills_in_match"}},{"text":"\n2. ","color":"gold"},{"selector":"@a[tag=Kim2]"},{"score":{"name":"#3","objective":"kills_in_match"}},{"text":"\n3. ","color":"gold"},{"selector":"@a[tag=Kim3]"},{"score":{"name":"#3","objective":"kills_in_match"}}]