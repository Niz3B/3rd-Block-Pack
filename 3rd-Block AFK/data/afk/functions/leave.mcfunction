#3rd-Block AFK Pack.
#Removes a player from the afk team.

#======== Custom Teams ========
#add for each custom team.
#execute if entity @s[team=afk_custom1] run team join custom1 @s
#execute if entity @s[team=afk_custom2] run team join custom2 @s
#...
#==============================

execute if entity @s[team=afk_Player] run team leave @s

scoreboard players set @s is_afk 0
function afk:notify
