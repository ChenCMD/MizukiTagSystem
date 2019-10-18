##ベースダメージ
execute unless entity @s[nbt={ActiveEffects:[{Id:26b}]}] run scoreboard players operation @s Health -= $onAttackDamage Ver
##補正
execute unless entity @s[nbt={ActiveEffects:[{Id:26b}]}] if entity @a[distance=..3.5,advancements={system:onattack/for_player=true},nbt={ActiveEffects:[{Id:5b}]}] run scoreboard players operation @s Health -= $ATKBonus Ver