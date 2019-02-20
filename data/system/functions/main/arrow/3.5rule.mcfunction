#inGround:1bの矢を撃ったプレイヤーに矢をgive
execute as @a if score @s UserID = @e[type=arrow,nbt={NoGravity:1b},scores={NoGravityArrow=70..},limit=1] UserID run give @s minecraft:arrow
#inGround:1bの矢をkill
execute as @a if score @s UserID = @e[type=arrow,nbt={NoGravity:1b},scores={NoGravityArrow=70..},limit=1] UserID run kill @e[type=arrow,nbt={NoGravity:1b},scores={NoGravityArrow=70..},limit=1]