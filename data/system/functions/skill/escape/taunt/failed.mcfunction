tellraw @s [{"text":"Luck of Diceに失敗した...","color":"red"}]
function random:generation
scoreboard players operation @s Random %= $100 Ver
scoreboard players add @s Random 1
execute if score @s Random matches 1..10 run effect give @s minecraft:blindness 15 0 true
execute if score @s Random matches 11..20 run summon firework_rocket ~ ~1 ~ {LifeTime:30,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:4,Flicker:1,Trail:1,Colors:[11743532],FadeColors:[4312372]}]}}}}
execute if score @s Random matches 21..35 run playsound minecraft:entity.wolf.howl master @a[distance=..30]
execute if score @s Random matches 36..50 run effect give @s minecraft:unluck 20 0 true
execute if score @s Random matches 51..65 run particle minecraft:end_rod ~ ~ ~ 0 10 0 0 70 force
execute if score @s Random matches 66..80 run effect give @s minecraft:levitation 10 200 true
execute if score @s Random matches 81..90 run playsound minecraft:entity.bat.ambient master @a[distance=..30]
execute if score @s Random matches 91..100 run summon minecraft:potion ~ ~ ~ {Motion:[0.0,0.8,0.0],Team:"Hunter",Potion:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:water",CustomPotionEffects:[{Id:15b,Amplifier:0b,Duration:21}]}}}
execute if score @s Random matches 91..100 run summon minecraft:potion ~ ~ ~ {Motion:[0.0,0.6,0.0],Team:"Hunter",Potion:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:water",CustomPotionEffects:[{Id:15b,Amplifier:0b,Duration:21}]}}}
execute if score @s Random matches 91..100 run summon minecraft:potion ~ ~ ~ {Motion:[0.0,0.4,0.0],Team:"Hunter",Potion:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:water",CustomPotionEffects:[{Id:15b,Amplifier:0b,Duration:21}]}}}