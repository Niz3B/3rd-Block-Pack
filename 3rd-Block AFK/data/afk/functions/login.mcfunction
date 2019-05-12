#3rd-Block AFK Pack.
#Runs when the player logs in
#and calls the leave funciton.

scoreboard players set @s afk_logout 0
scoreboard players set #afk afk_notify_delay 1
execute as @s run function afk:leave
