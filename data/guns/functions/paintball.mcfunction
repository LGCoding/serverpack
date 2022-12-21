execute as @a[scores={RightClick=1..,shotDelay=0},team=BluePaint,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{color:1}},Inventory:[{id:"minecraft:magma_cream"}]}] at @s anchored eyes run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["blueBullet"],Pose:{Head:[180f,0f,0f]}}
execute as @a[scores={RightClick=1..,shotDelay=0},team=BluePaint,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{color:1}},Inventory:[{id:"minecraft:magma_cream"}]}] at @s anchored eyes run teleport @e[limit=1,distance=..1,tag=blueBullet,type=minecraft:armor_stand] @p
execute as @a[scores={RightClick=1..,shotDelay=0},team=BluePaint,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{color:1}}}] at @s anchored eyes run teleport @e[limit=1,distance=..1,tag=blueBullet,type=minecraft:armor_stand] ~ ~1.5 ~
execute as @a[scores={RightClick=1..,shotDelay=0},team=BluePaint,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{color:1}}}] at @s anchored eyes run clear @s minecraft:magma_cream 1
execute as @a[scores={RightClick=1..,shotDelay=0},team=BluePaint,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{color:1}}}] at @s anchored eyes run scoreboard players set @s shotDelay 10
execute as @a[scores={RightClick=1..,shotDelay=0},team=RedPaint,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{color:0}},Inventory:[{id:"minecraft:magma_cream"}]}] at @s anchored eyes run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["redBullet"],Pose:{Head:[180f,0f,0f]}}
execute as @a[scores={RightClick=1..,shotDelay=0},team=RedPaint,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{color:0}}}] at @s anchored eyes run teleport @e[limit=1,distance=..1,tag=redBullet,type=minecraft:armor_stand] @p
execute as @a[scores={RightClick=1..,shotDelay=0},team=RedPaint,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{color:0}}}] at @s anchored eyes run teleport @e[limit=1,distance=..1,tag=redBullet,type=minecraft:armor_stand] ~ ~1.5 ~
execute as @a[scores={RightClick=1..,shotDelay=0},team=RedPaint,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{color:0}}}] at @s anchored eyes run clear @s minecraft:magma_cream 1
execute as @a[scores={RightClick=1..,shotDelay=0},team=RedPaint,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{color:0}}}] at @s anchored eyes run scoreboard players set @s shotDelay 10
scoreboard players set @a RightClick 0

execute as @e[tag=blueBullet,type=minecraft:armor_stand] at @s run tp @s ^ ^ ^.7
execute as @e[tag=redBullet,type=minecraft:armor_stand] at @s run tp @s ^ ^ ^.7
execute as @e[tag=blueBullet,type=minecraft:armor_stand] at @s unless block ~ ~ ~ air run kill @s
execute as @e[tag=redBullet,type=minecraft:armor_stand] at @s unless block ~ ~ ~ air run kill @s
execute as @e[tag=blueBullet,type=minecraft:armor_stand] at @s run effect give @p[dx=0,team=RedPaint] minecraft:instant_damage 1
execute as @e[tag=redBullet,type=minecraft:armor_stand] at @s run effect give @p[dx=0,team=BluePaint] minecraft:instant_damage 1
execute as @e[tag=blueBullet,type=minecraft:armor_stand] at @s if entity @p[dx=0,team=RedPaint] run kill @s
execute as @e[tag=redBullet,type=minecraft:armor_stand] at @s if entity @p[dx=0,team=BluePaint] run kill @s
execute as @e[tag=blueBullet,type=minecraft:armor_stand] at @s run tp @s ^ ^ ^.7

execute as @e[tag=redBullet,type=minecraft:armor_stand] at @s run tp @s ^ ^ ^.7
execute as @e[tag=blueBullet,type=minecraft:armor_stand] at @s unless block ~ ~ ~ air run kill @s
execute as @e[tag=redBullet,type=minecraft:armor_stand] at @s unless block ~ ~ ~ air run kill @s
execute as @e[tag=blueBullet,type=minecraft:armor_stand] at @s run effect give @p[dx=0,team=RedPaint] minecraft:instant_damage 1
execute as @e[tag=redBullet,type=minecraft:armor_stand] at @s run effect give @p[dx=0,team=BluePaint] minecraft:instant_damage 1
execute as @e[tag=blueBullet,type=minecraft:armor_stand] at @s if entity @p[dx=0,team=RedPaint] run kill @s
execute as @e[tag=redBullet,type=minecraft:armor_stand] at @s if entity @p[dx=0,team=BluePaint] run kill @s

scoreboard players remove @a[scores={shotDelay=1..}] shotDelay 1
item replace entity @e[tag=redBullet] armor.head with minecraft:red_concrete
item replace entity @e[tag=blueBullet] armor.head with minecraft:blue_concrete
scoreboard players add @e[tag=blueBullet] bulletAliveTime 1
scoreboard players add @e[tag=redBullet] bulletAliveTime 1
kill @e[scores={bulletAliveTime=70..},tag=blueBullet]
kill @e[scores={bulletAliveTime=70..},tag=redBullet]
