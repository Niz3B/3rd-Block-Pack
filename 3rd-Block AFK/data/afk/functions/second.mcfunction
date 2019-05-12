#3rd-Block AFK Pack.
#Runs every second.

#Add 0 to scoreboards ensures every new player will have it.
scoreboard players add @a is_afk 0

#Builds up the time before the next afk check
scoreboard players add @a afk_check 1

#change the treshold number of seconds to fit your needs.
#300 by default.
execute as @a[scores={afk_check=300..}] at @s run function afk:check_afk

execute as @a[scores={afk_logout=1..}] at @s run function afk:login
execute as @a[scores={afk=1..}] at @s run function afk:trigger
execute as @a[scores={is_afk=1..}] at @s run function afk:check_movement

function afk:track_time

#Adds a 1 second delay so messages won't be triggered multiple times
execute if score #afk afk_notify_delay matches 1 run scoreboard players set #afk afk_notify_delay 0
