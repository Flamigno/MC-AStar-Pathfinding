#--------------#
# By: Flamingo #
# 5 April 2021 #
#--------------#

execute positioned ~ ~ ~1 if block ~ ~ ~ #pathfinding:allowed unless entity @e[tag=pfind,tag=explore,distance=..0.3] run summon armor_stand ~ ~ ~ {Tags: ["pfind", "explore", "z", "+z", "new"], NoGravity: 1b, Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;417377380,-189248525,-1376730054,-556098371],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmNkYmVkOTc5NTIzYmUxYzU2ZWMzMWNiNGY1YzQ4M2JhZjhhNjU5MGRkZjhkYmI0ZDcyZGJkNTkyMzg1YTJmOSJ9fX0="}]}}}}],Small:1b}

execute positioned ~ ~ ~-1 if block ~ ~ ~ #pathfinding:allowed unless entity @e[tag=pfind,tag=explore,distance=..0.3] run summon armor_stand ~ ~ ~ {Tags: ["pfind", "explore", "z", "-z", "new"], NoGravity: 1b, Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;417377380,-189248525,-1376730054,-556098371],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmNkYmVkOTc5NTIzYmUxYzU2ZWMzMWNiNGY1YzQ4M2JhZjhhNjU5MGRkZjhkYmI0ZDcyZGJkNTkyMzg1YTJmOSJ9fX0="}]}}}}],Small:1b}

execute positioned ~1 ~ ~ if block ~ ~ ~ #pathfinding:allowed unless entity @e[tag=pfind,tag=explore,distance=..0.3] run summon armor_stand ~ ~ ~ {Tags: ["pfind", "explore", "x", "+x", "new"], NoGravity: 1b, Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;417377380,-189248525,-1376730054,-556098371],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmNkYmVkOTc5NTIzYmUxYzU2ZWMzMWNiNGY1YzQ4M2JhZjhhNjU5MGRkZjhkYmI0ZDcyZGJkNTkyMzg1YTJmOSJ9fX0="}]}}}}],Small:1b}

execute positioned ~-1 ~ ~ if block ~ ~ ~ #pathfinding:allowed unless entity @e[tag=pfind,tag=explore,distance=..0.3] run summon armor_stand ~ ~ ~ {Tags: ["pfind", "explore", "x", "-x", "new"], NoGravity: 1b, Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;417377380,-189248525,-1376730054,-556098371],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmNkYmVkOTc5NTIzYmUxYzU2ZWMzMWNiNGY1YzQ4M2JhZjhhNjU5MGRkZjhkYmI0ZDcyZGJkNTkyMzg1YTJmOSJ9fX0="}]}}}}],Small:1b}

execute if score $diagonal pfind.var matches 1 run function pathfinding:summon_neighbors/diagonal_visible
execute if score $3d pfind.var matches 1 run function pathfinding:summon_neighbors/3d_visible