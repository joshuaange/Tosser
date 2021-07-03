playsound minecraft:item.trident.throw player @a[distance=..5]

# Matching rotation of direction it should move
data modify entity @s Rotation set from entity @p[distance=..1.5,predicate=aeo:sneaking] Rotation

# Armor stand with item
execute at @p[distance=..1.5,predicate=aeo:sneaking] run summon armor_stand ^0.55 ^-0.5 ^0.4 {Tags:["aeoTossed"],Invisible:1b,Invulnerable:1b,Marker:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{},{},{},{}],HandItems:[{},{}],DisabledSlots:4144959,Pose:{Head:[90f,45f,0f]}}
data modify entity @e[tag=aeoTossed,limit=1,sort=nearest] Rotation set from entity @s Rotation
data modify entity @e[tag=aeoTossed,limit=1,sort=nearest] ArmorItems[3] set from entity @s Item

# To not remove damage if in creative
execute as @p[distance=..1.5,predicate=aeo:sneaking,scores={tosserAge=0},gamemode=creative] at @s run tag @e[tag=aeoTossed,limit=1,sort=nearest] add tosserCreativeThrower
# Stopping spamming
scoreboard players set @p[distance=..1.5,predicate=aeo:sneaking,scores={tosserAge=0}] tosserAge 10

# Remove item
kill @s
