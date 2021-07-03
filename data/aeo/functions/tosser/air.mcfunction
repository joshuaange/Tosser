# Keeps track of age
scoreboard players add @s tosserAge 1


# BLOCK EFFECTS
# break single breakable blocks and drop
execute if block ~ ~ ~ #aeo:tosser/single_breakable run function aeo:tosser/specifics/single_break
# break breakable blocks
execute if block ~ ~ ~ #aeo:tosser/breakable run setblock ~ ~ ~ air destroy
# put out candles
execute if block ~ ~ ~ #minecraft:candles[lit=true] run function aeo:tosser/specifics/put_out_candle
# hit block
execute unless block ~ ~ ~ #aeo:tosser/passable run function aeo:tosser/specifics/drop

# ENTITIES
# hit entity
execute if score @s tosserAge >= %Min tosserAge if entity @e[type=#aeo:tosser/hittable,dx=0] run function aeo:tosser/specifics/hit

# MISC
# if below world
execute if entity @s[y=0,dy=1] run kill @s
# after two minutes
execute if score @s tosserAge >= %Max tosserAge run function aeo:tosser/specifics/drop
