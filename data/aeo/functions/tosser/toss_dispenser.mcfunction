playsound minecraft:item.trident.throw player @a[distance=..5]

# Matching rotation of direction it should move
execute if block ~ ~ ~-0.75 dispenser run data merge entity @s {Rotation:[360.0f,0.0f]}
execute if block ~ ~ ~0.75 dispenser run data merge entity @s {Rotation:[180.0f,0.0f]}
execute if block ~-0.75 ~ ~ dispenser run data merge entity @s {Rotation:[-90.0f,0.0f]}
execute if block ~0.75 ~ ~ dispenser run data merge entity @s {Rotation:[90.0f,0.0f]}

# Armor stand with item
execute if block ~ ~ ~-0.75 dispenser align xyz run summon armor_stand ~1.05 ~-1.25 ~-0.5 {Tags:["aeoTossed"],Invisible:1b,Invulnerable:1b,Marker:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{},{}],DisabledSlots:4144959,Pose:{Head:[90f,45f,0f]}}
execute if block ~ ~ ~0.75 dispenser align xyz run summon armor_stand ~-0.05 ~-1.25 ~1.5 {Tags:["aeoTossed"],Invisible:1b,Invulnerable:1b,Marker:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{},{}],DisabledSlots:4144959,Pose:{Head:[90f,45f,0f]}}
execute if block ~-0.75 ~ ~ dispenser align xyz run summon armor_stand ~-0.5 ~-1.25 ~-0.05 {Tags:["aeoTossed"],Invisible:1b,Invulnerable:1b,Marker:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{},{}],DisabledSlots:4144959,Pose:{Head:[90f,45f,0f]}}
execute if block ~0.75 ~ ~ dispenser align xyz run summon armor_stand ~1.5 ~-1.25 ~1.05 {Tags:["aeoTossed"],Invisible:1b,Invulnerable:1b,Marker:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{},{}],DisabledSlots:4144959,Pose:{Head:[90f,45f,0f]}}
data modify entity @e[tag=aeoTossed,limit=1,sort=nearest] Rotation set from entity @s Rotation
data modify entity @e[tag=aeoTossed,limit=1,sort=nearest] ArmorItems[3] set from entity @s Item

# Remove item
kill @s
