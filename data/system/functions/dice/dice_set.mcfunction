tag @e[tag=DiceBlock] remove SuccessDice
tag @e[sort=random,tag=DiceBlock,limit=1] add SuccessDice
execute at @e[tag=DiceBlock] run setblock ~ ~ ~ minecraft:obsidian
execute at @e[tag=MainDiceBlock] run setblock ~ ~ ~ minecraft:beacon{Lock:"key"}
tag @e[tag=DiceBlock] add DBParticle
tag @e[tag=MainDiceBlock] add MDBParticle