
execute as @r[team=Escape,tag=!HaveLoD] run tag @s add LoD0
execute as @a[tag=LoD0] run function system:skill/escape/taunt/give
execute as @a[tag=LoD0] run tag @s add HaveLoD
execute if entity @a[tag=LoD0] run tellraw @a {"selector":"@a[tag=LoD0]","color":"aqua"}
execute as @a[tag=LoD0] run tag @s remove LoD0
scoreboard players remove $LoDCopy Ver 1
execute if score $LoDCopy Ver matches 1.. run function system:skill/escape/taunt/loop