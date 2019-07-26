execute at @s if entity @e[tag=DiceBlock,tag=!SuccessDice,distance=..5.5] run tellraw @s [{"text":"はずれのようだ...","color":"green"}]
execute at @s if entity @e[tag=SuccessDice,distance=..5.5] run tellraw @a [{"selector":"@s"},{"text":"が金のツルハシを入手した！","color":"gold"}]
execute at @s if entity @e[tag=SuccessDice,distance=..5.5] at @e[tag=DiceBlock] run setblock ~ ~ ~ minecraft:gray_concrete
execute at @s if entity @e[tag=SuccessDice,distance=..5.5] as @e[tag=DiceBlock] run tag @s remove DBParticle
execute at @s if entity @e[tag=SuccessDice,distance=..5.5] run clear @a minecraft:diamond_pickaxe
execute at @s if entity @e[tag=SuccessDice,distance=..5.5] run give @s minecraft:golden_pickaxe{Unbreakable:1,CanDestroy:["minecraft:beacon"],Enchantments:[{id:"minecraft:fortune",lvl:10}],AttributeModifiers:[{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:-0.5,Operation:1,UUIDLeast:5,UUIDMost:666,Slot:"mainhand"}]} 1
execute at @s as @e[tag=DiceBlock,distance=..5.5] run tag @s remove DBParticle
execute at @s as @e[tag=SuccessDice,distance=..5.5] run tag @s remove SuccessDice
execute at @s at @e[tag=DiceBlock,distance=..5.5] run setblock ~ ~ ~ minecraft:gray_concrete
scoreboard players reset @s OB_Break