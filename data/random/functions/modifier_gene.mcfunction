summon minecraft:villager ~ ~ ~ {Tags:["LootDeath"],DeathLootTable:"random:loot",Silent:1b}
kill @e[tag=LootDeath]
execute store result score $Rand_Modifier AddTmp run data get entity @e[nbt={Item:{tag:{NoKill:1b}}},distance=..3,limit=1] Item.tag.AttributeModifiers[0].Amount 100
kill @e[nbt={Item:{tag:{NoKill:1b}}},distance=..3,limit=1]
scoreboard players reset $RandUseCount Random