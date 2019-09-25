execute as @a[distance=..40] if score @s UserID = @e[type=item,tag=DeleyFlash,distance=0,limit=1] UserID run effect give @s[team=Escape] minecraft:glowing 60 0 true
execute as @a[distance=..40] if score @s UserID = @e[type=item,tag=DeleyFlash,distance=0,limit=1] UserID run tag @s[team=Hunter] add Event_Death
kill @e[type=item,tag=DeleyFlash,distance=0,limit=1]

execute if entity @s[tag=Event_Death] run tellraw @a [{"selector":"@a[tag=Event_Death]","bold":false},{"text":"は1分以内に40m離れずに死んだ...","color":"aqua","bold":false}]
execute if entity @s[tag=Event_Death] run scoreboard players set @a[tag=Event_Death] Health 0
execute if entity @s[tag=Event_Death] run playsound minecraft:entity.lightning_bolt.thunder player @s ~ ~ ~ 1 0.9 1
execute if entity @s[tag=Event_Death] as @a[tag=Event_Death] run function system:mode/hunter_death
execute if entity @s[tag=Event_Death] run tag @a[tag=Event_Death] remove Event_Death