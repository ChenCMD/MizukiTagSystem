execute as @a[distance=..40] if score @s UserID = @e[type=item,tag=DeleyFlash,distance=0,limit=1] UserID run effect give @s[team=Escape] minecraft:glowing 60 0 true
kill @e[type=item,tag=DeleyFlash,distance=0,limit=1]