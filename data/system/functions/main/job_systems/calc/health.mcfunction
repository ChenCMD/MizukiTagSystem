##ベースダメージ
execute unless entity @s[nbt={ActiveEffects:[{Id:26b}]}] run scoreboard players operation @s Health -= $onAttackDamage AddTmp
##補正
execute unless entity @s[nbt={ActiveEffects:[{Id:26b}]}] if entity @a[distance=..3.5,advancements={system:onattack/for_player=true},nbt={ActiveEffects:[{Id:5b}]}] run scoreboard players operation @s Health -= $ATKBonus AddTmp
tellraw @a[team=OP,tag=DebugView] [{"text":"[DEBUG] ","color":"dark_aqua"},{"selector":"@s","color":"dark_aqua"},{"text":" on damage","color":"dark_aqua"}]