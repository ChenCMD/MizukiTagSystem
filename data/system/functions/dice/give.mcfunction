tellraw @a [{"selector":"@s"},{"text":"がスーパーダイスを入手した！","color":"gold"}]
tag @e[tag=MainDiceBlock] remove MDBParticle
execute at @e[tag=MainDiceBlock] run setblock ~ ~ ~ minecraft:gray_concrete
execute at @e[tag=MainDiceBlock] run effect give @a[distance=..15,team=Hunter] minecraft:slowness 15 4 true
clear @a minecraft:golden_pickaxe
scoreboard players reset @s Beacon_Break

function random:generation
scoreboard players operation @s Random %= $100 AddTmp
scoreboard players add @s Random 1
execute if entity @s[scores={Random=51..100}] run advancement grant @s only system:give_dice_event
execute if entity @s[scores={Random=11..50}] run advancement grant @s only system:give_dice_item
execute if entity @s[scores={Random=1..10}] run advancement grant @s only system:give_dice_hyper