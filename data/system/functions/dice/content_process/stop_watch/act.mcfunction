execute if entity @s[team=Escape] run tellraw @a [{"selector":"@s"},{"text":"はストップウォッチを使用した！\n鬼はクールタイムが15秒追加された！","color":"aqua"}]
execute if entity @s[team=Hunter] run tellraw @a [{"selector":"@s"},{"text":"はストップウォッチを使用した！\n逃走者はクールタイムが15秒追加された！","color":"aqua"}]
execute if entity @s[team=Escape] run xp add @a[team=Hunter] 15 levels
execute if entity @s[team=Hunter] run xp add @a[team=Escape] 15 levels