#3rd-Block AFK Pack.
#Tracks the afk and played times

execute as @a[scores={is_afk=1..}] run scoreboard players add @s seconds_afk 1
execute as @a[scores={is_afk=0}] run scoreboard players add @s seconds_played 1

execute as @a run scoreboard players operation @s minutes_played = @s seconds_played
execute as @a run scoreboard players operation @s minutes_played /= 60 time_constant

execute as @a run scoreboard players operation @s hours_played = @s seconds_played
execute as @a run scoreboard players operation @s hours_played /= 3600 time_constant

execute as @a run scoreboard players operation @s minutes_afk = @s seconds_afk
execute as @a run scoreboard players operation @s minutes_afk /= 60 time_constant

execute as @a run scoreboard players operation @s hours_afk = @s seconds_afk
execute as @a run scoreboard players operation @s hours_afk /= 3600 time_constant
