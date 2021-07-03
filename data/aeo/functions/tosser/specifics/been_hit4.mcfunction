# send player death message if player is going to die:
execute if entity @s[scores={tosserHealth=1..12},nbt={HurtTime:0s}] run gamerule showDeathMessages false
execute if entity @s[scores={tosserHealth=1..12},nbt={HurtTime:0s}] run tellraw @a ["",{"selector":"@s"},{"text":" was impaled by a flying object"}]
execute if entity @s[scores={tosserHealth=1..12},nbt={HurtTime:1s}] run gamerule showDeathMessages false
execute if entity @s[scores={tosserHealth=1..12},nbt={HurtTime:1s}] run tellraw @a ["",{"selector":"@s"},{"text":" was impaled by a flying object"}]

execute unless entity @s[type=#aeo:tosser/hittable_undead] run effect give @s instant_damage 1 1

execute if entity @s[type=#aeo:tosser/hittable_undead] run effect give @s instant_health 1 1
