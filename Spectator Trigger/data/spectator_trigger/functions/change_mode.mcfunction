gamemode spectator @s[scores={ST_toSpectator=1..}]
gamemode survival @s[scores={ST_toSurvival=1..}]

scoreboard players reset @s[scores={ST_toSpectator=1..}] ST_toSpectator
scoreboard players reset @s[scores={ST_toSurvival=1..}] ST_toSurvival

scoreboard players reset @s ST_waiting
tellraw @s "Done."