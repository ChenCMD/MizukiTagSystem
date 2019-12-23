team join Wait @a[team=!OP]
clear @a minecraft:carrot_on_a_stick{ItemID:501s} 1
clear @a minecraft:carrot_on_a_stick{ItemID:502s} 1
execute as @a run function system:main/team_select/yes
tellraw @a {"translate":"サーバーリソースパックが無効になっています。","color":"red"}
tellraw @a {"translate":"サーバーリソースパックを有効にすることでアイテムを正常に表示できます。","color":"red"}