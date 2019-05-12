#3rd-Block AFK Pack.
#Joins a player to the afk team.

#======== Custom Teams ========
#add for each custom team.
#execute if entity @s[team=custom1] run team join afk_custom1 @s
#execute if entity @s[team=custom2] run team join afk_custom2 @s
#...
#==============================

#Default afk team.
execute if entity @s[team=] run team join afk_Player @s

scoreboard players set @s is_afk 1
function afk:notify
