schedule function spectator_trigger:loop_5t 5t

scoreboard players enable @a s

scoreboard players set @a[scores={s=1.., st_counter=0}] st_counter 1

# first loop after triggering
scoreboard players set @a[scores={st_counter=1}] st_toSpectator 1
scoreboard players set @a[scores={st_counter=1}] st_toSurvival 1

tellraw @a[scores={st_counter=1, st_toSpectator=1..}] ["","You will enter ",{"text":"spectator mode","bold":true,"color":"gold"}," in 5 seconds."]
tellraw @a[scores={st_counter=1, st_toSurvival=1..}] ["","You will enter ",{"text":"survival mode","bold":true,"color":"green"}," in 5 seconds."]

# next loops
scoreboard players add @a[scores={st_counter=1..}] st_counter 5

gamemode spectator @a[scores={st_counter=100.., st_toSpectator=1..}]
gamemode survival @a[scores={st_counter=100.., st_toSurvival=1..}]

scoreboard players reset @a[scores={st_counter=100.., st_toSpectator=1..}] st_toSpectator
scoreboard players reset @a[scores={st_counter=100.., st_toSurvival=1..}] st_toSurvival

tellraw @a[scores={st_counter=100..}] "Done."
scoreboard players reset @a[scores={st_counter=100..}] st_counter


scoreboard players reset @a[scores={s=1..}] s
