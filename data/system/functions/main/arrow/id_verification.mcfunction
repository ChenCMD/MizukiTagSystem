#inGround:1bの矢を撃ったプレイヤーに矢をgive
execute as @a if score @s UserID = @e[nbt={inGround:1b},type=arrow,limit=1] UserID run give @s minecraft:arrow{display:{Name:"\"§5魔力\""}}
#inGround:1bの矢をkill
execute as @a if score @s UserID = @e[nbt={inGround:1b},type=arrow,limit=1] UserID run kill @e[nbt={inGround:1b},type=arrow,limit=1]