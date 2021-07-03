playsound minecraft:item.trident.hit_ground ambient @a[distance=..5]

# If completely destroyed
execute if predicate aeo:tosser/zero_durability run playsound minecraft:entity.item.break ambient @a[distance=..5]
execute if predicate aeo:tosser/zero_durability run particle item minecraft:stone_sword ^ ^ ^-0.65 0.3 0.3 0.3 0.025 8

# New item
execute unless predicate aeo:tosser/zero_durability run summon item ~ ~ ~ {Tags:["tosserDropped"],Item:{id:"minecraft:stone_button",Count:1b},Age:2s}
execute unless predicate aeo:tosser/zero_durability run data modify entity @e[tag=tosserDropped,sort=nearest,limit=1] Item set from entity @s ArmorItems[3]
execute unless predicate aeo:tosser/zero_durability run tag @e[tag=tosserDropped,sort=nearest,limit=1] remove tosserDropped

kill @s
