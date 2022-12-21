execute if block 870 71 904 minecraft:oak_button[powered=true] as @a at @s if block ~ ~-2 ~ raw_gold_block run tag @s add SCPGAME
execute if block 870 71 904 minecraft:oak_button[powered=true] as @a at @s if block ~ ~-2 ~ raw_gold_block run spawnpoint @s
execute if block 870 71 904 minecraft:oak_button[powered=true] as @a at @s if block ~ ~-2 ~ raw_gold_block run gamemode adventure
execute if block 870 71 904 minecraft:oak_button[powered=true] as @a[tag=SCPGAME,limit=2,sort=random] at @s run tp @s @e[limit=1,name=SCP]
execute if block 870 71 904 minecraft:oak_button[powered=true] as @a at @s if block ~ ~-2 ~ raw_gold_block run tp @s @e[limit=1,tag=classStart]
execute if block 870 71 904 minecraft:oak_button[powered=true] run function guns:scp_start
execute if block 870 71 904 minecraft:oak_button[powered=true] run setblock 870 71 904 minecraft:oak_button[powered=false]

execute if score RespawnTimer SCPINFO = 0 const as @e[type=minecraft:armor_stand,tag=chooser] run tp @s @e[limit=1,tag=classDeath, sort=random]
execute if score RespawnTimer SCPINFO = 0 const as @a at @s if block ~ ~-1 ~ minecraft:tinted_glass if block ~ ~-2 ~ minecraft:red_stained_glass run tp @s @e[limit=1,tag=chooser]
execute if score RespawnTimer SCPINFO = 0 const as @e[type=minecraft:armor_stand,tag=chooser] run scoreboard players set RespawnTimer SCPINFO 100
