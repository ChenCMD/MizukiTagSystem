tellraw @a ["",{"selector":"@a[tag=DatugokuFlags,team=Escape]"},{"text":" の手によって脱獄した。","color":"green"}]
team join Escape @a[team=Died]
replaceitem entity @a[tag=DatugokuFlags] armor.head air
clear @a[tag=DatugokuFlags] leather_chestplate
clear @a[tag=DatugokuFlags] leather_leggings
clear @a[tag=DatugokuFlags] leather_boots
effect give @a[tag=DatugokuFlags] minecraft:invisibility 10 0 true
effect give @a[tag=DatugokuFlags] minecraft:speed 10 0 true
effect give @a[tag=DatugokuFlags] minecraft:luck 10 0 true
scoreboard players set @a[tag=DatugokuFlags] Health 100
scoreboard players set @a[tag=DatugokuFlags] InvisibleArmor 200
function system:main/chunk_load/rs
execute as @a[tag=DatugokuFlags] at @s run tp @s @e[tag=RandSpawn,limit=1,type=armor_stand,sort=random]
scoreboard players set @e[tag=SM] DatugokuA 0