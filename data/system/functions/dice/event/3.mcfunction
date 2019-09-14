tellraw @a [{"text":"[ダイス]","color":"light_purple","bold":true},{"text":" 逃走者が15秒間透明になった！","color":"aqua","bold":false}]
effect give @a[team=Escape] minecraft:invisibility 15 0 true
scoreboard players set @a[team=Escape] InvisibleArmor 300
execute at @a[team=Escape] run particle poof ~ ~1 ~ 0.4 0.4 0.4 0.01 250
replaceitem entity @a[team=Escape] armor.head air
replaceitem entity @a[team=Escape] armor.chest air
replaceitem entity @a[team=Escape] armor.legs air
replaceitem entity @a[team=Escape] armor.feet air