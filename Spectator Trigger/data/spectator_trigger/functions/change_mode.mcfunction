gamemode spectator @s[scores={st_toSpectator=1..}]
gamemode survival @s[scores={st_toSurvival=1..}]

scoreboard players reset @s[scores={st_toSpectator=1..}] st_toSpectator
scoreboard players reset @s[scores={st_toSurvival=1..}] st_toSurvival

scoreboard players set @s st_counter 0