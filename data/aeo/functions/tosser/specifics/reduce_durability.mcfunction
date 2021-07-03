# Store damage in scoreboard
execute store result score @s tosserDamage run data get entity @s ArmorItems[3].tag.Damage

# Add one damage
scoreboard players add @s tosserDamage 5

# Return damage
execute store result entity @s ArmorItems[3].tag.Damage int 1.0 run scoreboard players get @s tosserDamage
