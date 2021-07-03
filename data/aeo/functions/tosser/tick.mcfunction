# Defined tossed items
execute as @e[type=item,nbt={PickupDelay:0s,Age:1s},tag=!tosserDropped] at @s if block ~ ~ ~-0.75 dispenser[facing=south] run tag @s add aeoTossedItemDispenser
execute as @e[type=item,nbt={PickupDelay:0s,Age:1s},tag=!tosserDropped] at @s if block ~ ~ ~0.75 dispenser[facing=north] run tag @s add aeoTossedItemDispenser
execute as @e[type=item,nbt={PickupDelay:0s,Age:1s},tag=!tosserDropped] at @s if block ~-0.75 ~ ~ dispenser[facing=east] run tag @s add aeoTossedItemDispenser
execute as @e[type=item,nbt={PickupDelay:0s,Age:1s},tag=!tosserDropped] at @s if block ~0.75 ~ ~ dispenser[facing=west] run tag @s add aeoTossedItemDispenser
execute as @e[type=item,nbt={PickupDelay:40s,Age:0s},tag=!tosserDropped] at @s if entity @p[distance=..1.5,predicate=aeo:sneaking,scores={tosserAge=0}] run tag @s add aeoTossedItem

# Summoning armor stand
execute as @e[tag=aeoTossedItem] at @s run function aeo:tosser/toss
execute as @e[tag=aeoTossedItemDispenser] at @s run function aeo:tosser/toss_dispenser

# Moving armor stand
execute as @e[tag=aeoTossed] at @s run tp @s ^ ^ ^0.75 ~ ~0.8
execute as @e[tag=aeoTossed] at @s anchored feet positioned ~ ~1.75 ~ positioned ^-0.5 ^ ^ run function aeo:tosser/air

# Stopping spamming
scoreboard players add @a tosserAge 0
scoreboard players remove @a[scores={tosserAge=1..}] tosserAge 1
