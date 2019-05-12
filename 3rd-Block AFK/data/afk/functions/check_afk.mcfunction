#3rd-Block AFK Pack.
#Checks if a player's position hasn't change
#after a period of time and
#calls the join function.

execute store result score @s afk_x2 run data get entity @s Pos[0] 100
execute store result score @s afk_y2 run data get entity @s Pos[1] 100
execute store result score @s afk_z2 run data get entity @s Pos[2] 100

execute if score @s afk_x2 = @s afk_x1 if score @s afk_y2 = @s afk_y1 if score @s afk_z2 = @s afk_z1 run function afk:join

execute store result score @s afk_x1 run data get entity @s Pos[0] 100
execute store result score @s afk_y1 run data get entity @s Pos[1] 100
execute store result score @s afk_z1 run data get entity @s Pos[2] 100

scoreboard players set @s afk_check 0
