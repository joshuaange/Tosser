# Commit damage according to item type
execute unless predicate aeo:tosser/low unless predicate aeo:tosser/mid unless predicate aeo:tosser/high unless predicate aeo:tosser/ultra as @e[type=#aeo:tosser/hittable,dx=1,limit=1,sort=nearest] at @s run function aeo:tosser/specifics/been_hit0
execute if predicate aeo:tosser/low as @e[type=#aeo:tosser/hittable,dx=1,limit=1,sort=nearest] at @s run function aeo:tosser/specifics/been_hit1
execute if predicate aeo:tosser/mid as @e[type=#aeo:tosser/hittable,dx=1,limit=1,sort=nearest] at @s run function aeo:tosser/specifics/been_hit2
execute if predicate aeo:tosser/high as @e[type=#aeo:tosser/hittable,dx=1,limit=1,sort=nearest] at @s run function aeo:tosser/specifics/been_hit3
execute if predicate aeo:tosser/ultra as @e[type=#aeo:tosser/hittable,dx=1,limit=1,sort=nearest] at @s run function aeo:tosser/specifics/been_hit4

# Reduce durability
execute if entity @s[tag=!tosserCreativeThrower,predicate=aeo:tosser/has_damaged_item] run function aeo:tosser/specifics/reduce_durability

function aeo:tosser/specifics/drop
gamerule showDeathMessages false
