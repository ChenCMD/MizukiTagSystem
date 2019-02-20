##ベースダメージ
scoreboard players operation @s Health -= $onAttackDamage AddTmp
##補正
execute if entity @a[distance=..3.5,advancements={system:onattack/for_player=true},nbt={ActiveEffects:[{Id:5b}]}] run scoreboard players operation @s Health -= $ATKBonus AddTmp