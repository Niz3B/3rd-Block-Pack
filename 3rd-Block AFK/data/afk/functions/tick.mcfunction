#3rd-Block AFK Pack.
#Runs every tick.

scoreboard players add #afk afk_tick 1

# Every 1 second
execute if score #afk afk_tick matches 1 run function afk:second
execute if score #afk afk_tick matches 21 run function afk:second
execute if score #afk afk_tick matches 41 run function afk:second
execute if score #afk afk_tick matches 61 run function afk:second
execute if score #afk afk_tick matches 81 run function afk:second

execute if score #afk afk_tick matches 100.. run scoreboard players set #afk afk_tick 0
