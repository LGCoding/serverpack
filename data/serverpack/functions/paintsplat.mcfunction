execute as @a[scores={rightclick=1..,shotDelay=0,Paint=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{iswepeon:1}}},tag=!zoomer,] at @s anchored eyes run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["bullet"],Pose:{Head:[180f,0f,0f]}}
execute as @a[scores={rightclick=1..,shotDelay=0,Paint=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{iswepeon:1,wepeonId:1}}},tag=!zoomer] at @s anchored eyes run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["bullet","shot1","shotgun"],Pose:{Head:[180f,0f,0f]}}
execute as @a[scores={rightclick=1..,shotDelay=0,Paint=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{iswepeon:1,wepeonId:1}}},tag=!zoomer] at @s anchored eyes run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["bullet","shot2","shotgun"],Pose:{Head:[180f,0f,0f]}}
execute as @a[scores={rightclick=1..,shotDelay=0,Paint=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{iswepeon:1,wepeonId:1}}},tag=!zoomer] at @s anchored eyes run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["bullet","shot3","shotgun"],Pose:{Head:[180f,0f,0f]}}
execute as @a[scores={rightclick=1..,shotDelay=0,Paint=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{iswepeon:1,wepeonId:1}}},tag=!zoomer] at @s anchored eyes run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["bullet","shot4","shotgun"],Pose:{Head:[180f,0f,0f]}}
execute as @a[scores={rightclick=1..,shotDelay=0,Paint=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{iswepeon:1}}},team=RedSplat,tag=!zoomer] at @s anchored eyes run tag @e[sort=nearest,tag=bullet] add red
execute as @a[scores={rightclick=1..,shotDelay=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{iswepeon:1}}},team=BlueSplat,tag=!zoomer] at @s anchored eyes run tag @e[sort=nearest,tag=bullet] add blue
execute as @a[scores={rightclick=1..,shotDelay=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{wepeonId:1}}},tag=!zoomer] at @s anchored eyes run tag @e[sort=nearest,tag=bullet] add shotgun
execute as @a[scores={rightclick=1..,shotDelay=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{wepeonId:2}}},tag=!zoomer] at @s anchored eyes run tag @e[limit=1,sort=nearest,tag=bullet] add sniper
execute as @a[scores={rightclick=1..,shotDelay=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{wepeonId:3}}},tag=!zoomer] at @s anchored eyes run tag @e[limit=1,sort=nearest,tag=bullet] add machinegun
execute as @a[scores={rightclick=1..,shotDelay=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{wepeonId:4}}},tag=!zoomer] at @s anchored eyes run tag @e[limit=1,sort=nearest,tag=bullet] add rifle
execute as @a[scores={rightclick=1..,shotDelay=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{iswepeon:1}}},tag=!zoomer] at @s anchored eyes run teleport @e[limit=1,distance=..1,tag=bullet,type=minecraft:armor_stand] @p
execute as @a[scores={rightclick=1..,shotDelay=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{iswepeon:1}}},tag=!zoomer] at @s anchored eyes run teleport @e[limit=1,distance=..1,tag=bullet,type=minecraft:armor_stand] ~ ~1.5 ~
execute as @a[scores={rightclick=1..,shotDelay=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{iswepeon:1}}}] at @s anchored eyes run teleport @e[limit=1,distance=..1,tag=shot1,type=minecraft:armor_stand] ~ ~1.5 ~ ~10 ~
execute as @a[scores={rightclick=1..,shotDelay=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{iswepeon:1}}}] at @s anchored eyes run teleport @e[limit=1,distance=..1,tag=shot2,type=minecraft:armor_stand] ~ ~1.5 ~ ~-10 ~
execute as @a[scores={rightclick=1..,shotDelay=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{iswepeon:1}}}] at @s anchored eyes run teleport @e[limit=1,distance=..1,tag=shot3,type=minecraft:armor_stand] ~ ~1.5 ~ ~ ~-5
execute as @a[scores={rightclick=1..,shotDelay=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{iswepeon:1}}}] at @s anchored eyes run teleport @e[limit=1,distance=..1,tag=shot4,type=minecraft:armor_stand] ~ ~1.5 ~ ~ ~5
execute as @a[scores={rightclick=1..,shotDelay=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{wepeonId:1}}},tag=!zoomer] at @s anchored eyes run scoreboard players remove @s Paint 20
execute as @a[scores={rightclick=1..,shotDelay=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{wepeonId:2}}},tag=!zoomer] at @s anchored eyes run scoreboard players remove @s Paint 15
execute as @a[scores={rightclick=1..,shotDelay=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{wepeonId:3}}},tag=!zoomer] at @s anchored eyes run scoreboard players remove @s Paint 5
execute as @a[scores={rightclick=1..,shotDelay=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{wepeonId:4}}},tag=!zoomer] at @s anchored eyes run scoreboard players remove @s Paint 10
execute as @a[scores={rightclick=1..,shotDelay=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{wepeonId:1}}},tag=!zoomer] at @s anchored eyes run scoreboard players set @s shotDelay 50
execute as @a[scores={rightclick=1..,shotDelay=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{wepeonId:2}}},tag=!zoomer] at @s anchored eyes run scoreboard players set @s shotDelay 35
execute as @a[scores={rightclick=1..,shotDelay=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{wepeonId:3}}},tag=!zoomer] at @s anchored eyes run scoreboard players set @s shotDelay 4
execute as @a[scores={rightclick=1..,shotDelay=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{wepeonId:4}}},tag=!zoomer] at @s anchored eyes run scoreboard players set @s shotDelay 30
execute as @e[tag=bullet,type=minecraft:armor_stand] at @s run tp @s ^ ^ ^.7

execute as @e[tag=blue,tag=sniper,type=minecraft:armor_stand] at @s as @p[dx=0,team=RedSplat] run scoreboard players add @s damage 10
execute as @e[tag=blue,tag=rifle,type=minecraft:armor_stand] at @s as @p[dx=0,team=RedSplat] run scoreboard players add @s damage 5
execute as @e[tag=blue,tag=shotgun,type=minecraft:armor_stand] at @s as @p[dx=0,team=RedSplat] run scoreboard players add @s damage 7
execute as @e[tag=blue,tag=machinegun,type=minecraft:armor_stand] at @s as @p[dx=0,team=RedSplat] run scoreboard players add @s damage 3
execute as @e[tag=red,tag=sniper,type=minecraft:armor_stand] at @s as @p[dx=0,team=BlueSplat] run scoreboard players add @s damage 10
execute as @e[tag=red,tag=rifle,type=minecraft:armor_stand] at @s as @p[dx=0,team=BlueSplat] run scoreboard players add @s damage 5
execute as @e[tag=red,tag=shotgun,type=minecraft:armor_stand] at @s as @p[dx=0,team=BlueSplat] run scoreboard players add @s damage 7
execute as @e[tag=red,tag=machinegun,type=minecraft:armor_stand] at @s as @p[dx=0,team=BlueSplat] run scoreboard players add @s damage 3
execute as @e[tag=blue,type=minecraft:armor_stand] at @s if entity @p[dx=0,team=RedSplat] run kill @s
execute as @e[tag=red,type=minecraft:armor_stand] at @s if entity @p[dx=0,team=BlueSplat] run kill @s
execute as @a[scores={damage=1..}] run function editor:deal_damage
scoreboard players set @a damage 0

execute as @e[tag=bullet,tag=red,type=minecraft:armor_stand] at @s unless block ~ ~ ~ air run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 minecraft:red_concrete replace minecraft:white_concrete
execute as @e[tag=bullet,tag=blue,type=minecraft:armor_stand] at @s unless block ~ ~ ~ air run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 minecraft:blue_concrete replace minecraft:white_concrete
execute as @e[tag=bullet,tag=red,type=minecraft:armor_stand] at @s unless block ~ ~ ~ air run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 minecraft:red_concrete replace minecraft:blue_concrete
execute as @e[tag=bullet,tag=blue,type=minecraft:armor_stand] at @s unless block ~ ~ ~ air run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 minecraft:blue_concrete replace minecraft:red_concrete
execute as @e[tag=bullet,type=minecraft:armor_stand] at @s unless block ~ ~ ~ air run kill @s
execute as @e[tag=red,type=minecraft:armor_stand] at @s run particle dust 1 0 0.000 1 ~ ~ ~ 0 0 0 1 10 normal
execute as @e[tag=blue,type=minecraft:armor_stand] at @s run particle dust 0 0 1 1 ~ ~ ~ 0 0 0 1 10 normal
scoreboard players add @e[tag=bullet] bulletAliveTime 1
kill @e[scores={bulletAliveTime=15..},tag=shotgun]
kill @e[scores={bulletAliveTime=300..},tag=sniper]
kill @e[scores={bulletAliveTime=40..},tag=machinegun]
kill @e[scores={bulletAliveTime=60..},tag=rifle]
tag @a remove roller
execute as @a[tag=!zoomer,scores={rightclick=1..,shotDelay=0,Paint=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{wepeonId:0}}}] at @s run tag @s add roller
execute as @a[tag=roller,team=RedSplat] at @s run fill ^2 ^ ^2 ^-2 ^ ^-2 minecraft:red_concrete replace minecraft:white_concrete
execute as @a[tag=roller,team=RedSplat] at @s run fill ^2 ^ ^2 ^-2 ^ ^-2 minecraft:red_concrete replace minecraft:blue_concrete
execute as @a[tag=roller,team=BlueSplat] at @s run fill ^2 ^ ^2 ^-2 ^ ^-2 minecraft:blue_concrete replace minecraft:white_concrete
execute as @a[tag=roller,team=BlueSplat] at @s run fill ^2 ^ ^2 ^-2 ^ ^-2 minecraft:blue_concrete replace minecraft:red_concrete
scoreboard players remove @a[tag=roller,scores={Paint=1..}] Paint 4
execute as @a[scores={rightclick=1..,shotDelay=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{wepeonId:1}}},tag=!zoomer] at @s anchored eyes run scoreboard players remove @s Paint 20
execute as @a[scores={rightclick=1..,shotDelay=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{wepeonId:2}}},tag=!zoomer] at @s anchored eyes run scoreboard players remove @s Paint 15
execute as @a[scores={rightclick=1..,shotDelay=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{wepeonId:3}}},tag=!zoomer] at @s anchored eyes run scoreboard players remove @s Paint 5
execute as @a[scores={rightclick=1..,shotDelay=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{wepeonId:4}}},tag=!zoomer] at @s anchored eyes run scoreboard players remove @s Paint 10
execute as @a[tag=roller,team=RedSplat] at @s run fill ^2 ^ ^2 ^-2 ^ ^-2 minecraft:red_concrete replace minecraft:white_concrete
execute as @a[tag=roller,team=BlueSplat] at @s run fill ^2 ^ ^2 ^-2 ^ ^-2 minecraft:sponge replace minecraft:air
execute as @a[tag=roller,team=RedSplat] at @s run fill ^2 ^ ^2 ^-2 ^ ^-2 minecraft:infested_cobblestone replace minecraft:air
scoreboard players set @a rightclick 0
execute as @a[team=RedSplat] at @s if block ~ ~ ~ minecraft:sponge run kill @s
execute as @a[team=RedSplat] at @s if block ~ ~1 ~ minecraft:sponge run kill @s
execute as @a[team=BlueSplat] at @s if block ~ ~ ~ minecraft:infested_cobblestone run kill @s
execute as @a[team=BlueSplat] at @s if block ~ ~1 ~ minecraft:infested_cobblestone run kill @s
execute as @a[team=BlueSplat] at @s run fill ~-5 ~-2 ~-5 ~5 ~2 ~5 air replace minecraft:sponge
execute as @a[team=RedSplat] at @s run fill ~-5 ~-2 ~-5 ~5 ~2 ~5 air replace minecraft:infested_cobblestone
