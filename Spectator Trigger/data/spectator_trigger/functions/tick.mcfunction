scoreboard players enable @a s

scoreboard players set @a[scores={s=1..}, gamemode=!spectator] ST_toSpectator 1
scoreboard players set @a[scores={s=1..}, gamemode=spectator] ST_toSurvival 1

gamemode spectator @a[scores={ST_toSpectator=1..}]
gamemode survival @a[scores={ST_toSurvival=1..}]

scoreboard players reset @a[scores={s=1..}] s
scoreboard players reset @a[scores={ST_toSpectator=1..}] ST_toSpectator
scoreboard players reset @a[scores={ST_toSurvival=1..}] ST_toSurvival