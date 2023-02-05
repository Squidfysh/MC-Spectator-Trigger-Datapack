scoreboard players set @s ST_waiting 1

scoreboard players set @s[gamemode=!spectator] ST_toSpectator 1
scoreboard players set @s[gamemode=spectator] ST_toSurvival 1

tellraw @s[scores={ST_toSpectator=1..}] ["","You will enter ",{"text":"spectator mode","bold":true,"color":"gold"}," in 5 seconds."]
tellraw @s[scores={ST_toSurvival=1..}] ["","You will enter ",{"text":"survival mode","bold":true,"color":"green"}," in 5 seconds."]

execute as @s run schedule function spectator_trigger:change_mode 5s