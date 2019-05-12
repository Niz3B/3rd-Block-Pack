#3rd-Block AFK Pack.
#Sends a notification in the chat when
#Players join or leave afk status.

execute if score #afk afk_notify matches 1 if score #afk afk_notify_delay matches 0 if score @s is_afk matches 1 as @s run tellraw @a ["",{"selector":"@s"},{"text":" is afk. ","color":"yellow"}]
execute if score #afk afk_notify matches 1 if score #afk afk_notify_delay matches 0 if score @s is_afk matches 0 as @s run tellraw @a ["",{"selector":"@s"},{"text":" is back! ","color":"yellow"}]

scoreboard players set #afk afk_notify_delay 1
