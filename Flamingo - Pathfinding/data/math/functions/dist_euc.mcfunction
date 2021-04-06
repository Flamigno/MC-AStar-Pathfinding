#--------------#
# By: Flamingo #
# 5 April 2021 #
#--------------#

###------------------------------------------------------###
#         This uses the euclidean distance formula         #
# distance = sqrt[(x1 - x2)^2 + (y1 - y2)^2 + (z1 - z2)^2] #
###------------------------------------------------------###

data modify storage flamingo:pathfind pos.node set from entity @s Pos

execute store result score #node.x pfind.cost_de run data get storage flamingo:pathfind pos.node[0] 100
execute store result score #node.y pfind.cost_de run data get storage flamingo:pathfind pos.node[1] 100
execute store result score #node.z pfind.cost_de run data get storage flamingo:pathfind pos.node[2] 100

execute store result score #x pfind.cost_de run scoreboard players operation #node.x pfind.cost_de -= #end.x pfind.cost_de
execute store result score #y pfind.cost_de run scoreboard players operation #node.y pfind.cost_de -= #end.y pfind.cost_de
execute store result score #z pfind.cost_de run scoreboard players operation #node.z pfind.cost_de -= #end.z pfind.cost_de

scoreboard players operation #x pfind.cost_de *= #x pfind.cost_de
scoreboard players operation #y pfind.cost_de *= #y pfind.cost_de
scoreboard players operation #z pfind.cost_de *= #z pfind.cost_de

scoreboard players operation @s pfind.cost_de = #x pfind.cost_de
scoreboard players operation @s pfind.cost_de += #y pfind.cost_de
scoreboard players operation @s pfind.cost_de += #z pfind.cost_de

scoreboard players operation @s math_in = @s pfind.cost_de
function math:sqrt
scoreboard players operation @s pfind.cost_de = distance math_in