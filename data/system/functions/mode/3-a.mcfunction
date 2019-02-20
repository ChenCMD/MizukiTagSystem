#脱獄処理#####################################################################################################
tag @e[tag=SM,nbt={FallDistance:138204.6f}] add if_Datugoku
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f,PortalCooldown:0}] if entity @a[team=Died] run function system:mode/3-b
execute if entity @e[tag=SM,nbt={FallDistance:138204.6f,PortalCooldown:0}] if entity @a[team=Died] run tag @a[team=Died] add DatugokuFlags
execute as @e[tag=SM,nbt={FallDistance:138204.6f},scores={DatugokuA=1..}] run function system:main/prison_break
tag @a[tag=DatugokuFlags] remove DatugokuFlags
scoreboard players set @e[tag=SM,nbt={FallDistance:138204.6f},tag=if_Datugoku] DatugokuA 0
###