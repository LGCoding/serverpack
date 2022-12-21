scoreboard players set @a[scores={sneak2=0}] crawling 0
execute as @e[scores={jump=1..,crawling=1}] at @s if block ~ ~1 ~ air run tp @s ~ ~.75 ~
execute as @e[scores={jump=1..,crawling=1}] at @s if block ~ ~1 ~ air run tp @e[limit=1,sort=nearest,name=crawlA] ~ ~1.20 ~
execute as @a[scores={sneak2=1..,jump=1..,crawling=0}] at @s run summon armor_stand ~ ~1 ~ {CustomNameVisible:0b,NoGravity:1b,Glowing:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Passengers:[{id:"minecraft:boat",Type:"acacia",NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:0b,PersistenceRequired:1b,NoAI:1b,AttachFace:0b,CustomName:'{"text":"crawlS"}',ActiveEffects:[{Id:10b,Amplifier:100b,Duration:1000000,ShowParticles:0b},{Id:11b,Amplifier:100b,Duration:1000000,ShowParticles:0b},{Id:12b,Amplifier:100b,Duration:1000000,ShowParticles:0b},{Id:13b,Amplifier:1b,Duration:1000000,ShowParticles:0b},{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}],CustomName:'{"text":"crawlA"}'}
execute as @a[scores={sneak2=1..,jump=1..,crawling=0}] at @s run scoreboard players set @s crawling 1
scoreboard players set @a jump 0
scoreboard players set @a sneak2 0
execute as @a[scores={crawling=1}] at @s run tp @e[limit=1,sort=nearest,name=crawlA] ~ ~1.20 ~
scoreboard players set @e[name=crawlA] removeS 0
execute as @a[scores={crawling=1}] at @s run scoreboard players set @e[limit=1,sort=nearest,name=crawlA,scores={removeS=0}] removeS 1
kill @e[name=crawlA,scores={removeS=0}]
execute as @e[name=crawlS] at @s unless entity @e[name=crawlA,distance=..2] run kill @s

execute as @e[name=crawlA] unless entity @s[nbt={Passengers:[{id:"minecraft:boat"}]}] at @s run summon armor_stand ~ ~ ~ {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Passengers:[{id:"minecraft:boat",Type:"acacia",NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:0b,PersistenceRequired:1b,NoAI:1b,AttachFace:0b,CustomName:'{"text":"crawlS"}',ActiveEffects:[{Id:10b,Amplifier:100b,Duration:1000000,ShowParticles:0b},{Id:11b,Amplifier:100b,Duration:1000000,ShowParticles:0b},{Id:12b,Amplifier:100b,Duration:1000000,ShowParticles:0b},{Id:13b,Amplifier:1b,Duration:1000000,ShowParticles:0b},{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}],CustomName:'{"text":"crawlA"}'}
execute as @e[name=crawlA] unless entity @s[nbt={Passengers:[{id:"minecraft:boat"}]}] at @s run kill @s
