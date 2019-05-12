#3rd-Block AFK Pack.
#Creates all the scoreboards
#and teams needed for the pack.

#======== Custom Teams ========
#team add custom1 "Custom Team 1"
#team modify custom color green
#
#team add afk_custom1 "AFK Custom 1"
#team modify afk_custom1 color gray
#
#team add custom2 "Custom Team 2"
#team modify custom color red
#
#team add afk_custom2 "AFK Custom 2"
#team modify afk_custom1 color gray
#
# ...
#==============================

#Default afk team
team add afk_Player "AFK Players"
team modify afk_Player color gray

# Flag to turn notifications ON and OFF (ON by default)
scoreboard objectives add afk_notify dummy
scoreboard players set #afk afk_notify 1
scoreboard objectives add afk_notify_delay dummy
scoreboard players set #afk afk_notify_delay 0

#scoreboards to track player activity
scoreboard objectives add seconds_afk dummy "Seconds AFK"
scoreboard objectives add minutes_afk dummy "Minutes AFK"
scoreboard objectives add hours_afk dummy "Hours AFK"
scoreboard objectives add seconds_played dummy "Seconds Played"
scoreboard objectives add minutes_played dummy "Minutes Played"
scoreboard objectives add hours_played dummy "Hours Played"

scoreboard objectives add time_constant dummy "Time Constants"
scoreboard players set 60 time_constant 60
scoreboard players set 3600 time_constant 3600

#trigger to manually join afk status
scoreboard objectives add afk trigger
scoreboard players enable @a afk

#scoreboards to track player movement
scoreboard objectives add afk_x1 dummy
scoreboard objectives add afk_x2 dummy
scoreboard objectives add afk_y1 dummy
scoreboard objectives add afk_y2 dummy
scoreboard objectives add afk_z1 dummy
scoreboard objectives add afk_z2 dummy

scoreboard objectives add afk_tick dummy
scoreboard objectives add afk_check dummy
scoreboard objectives add is_afk dummy

scoreboard objectives add afk_logout minecraft.custom:minecraft.leave_game
