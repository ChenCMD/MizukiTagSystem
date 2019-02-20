tellraw @a [{"selector":"@e[tag=SM,nbt={FallDistance:138204.6f}]","color":"green"},{"text":" loaded.","color":"green"}]
tellraw @a[tag=OP] [{"text":"[Chen'sSystem] ","color":"aqua"},{"text":"LoadingSystem","color":"green"},{"text":" : ","color":"white"},{"text":"VeryGood.","color":"green"}]
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f}] run tellraw @a[tag=OP] [{"text":"[Chen'sSystem] ","color":"aqua"},{"text":"MemorySystem","color":"green"},{"text":" : ","color":"white"},{"text":"VeryGood.","color":"green"}]
execute unless entity @e[tag=SM,nbt={FallDistance:138204.6f}] run tellraw @a[tag=OP] [{"text":"[Chen'sSystem] ","color":"aqua"},{"text":"MemorySystem","color":"green"},{"text":" : ","color":"white"},{"text":"Error!","color":"red"}]
execute unless entity @e[tag=SM,nbt={FallDistance:138204.6f}] run tellraw @a[tag=OP] [{"text":"[Chen'sSystem] ","color":"aqua"},{"text":"MainSystem","color":"green"},{"text":" : ","color":"white"},{"text":"Error!","color":"red"}]
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f}] run tag @e[tag=SM,nbt={FallDistance:138204.6f}] remove SystemFix
function system:load
execute if entity @e[tag=SM,tag=!SystemFix] run tellraw @a[tag=OP] [{"text":"[Chen'sSystem] ","color":"aqua"},{"text":"MainSystem","color":"green"},{"text":" : ","color":"white"},{"text":"Error!","color":"red"}]